import time
import serial
import serial.tools.list_ports
#import logging
from comtypes import CLSCTX_ALL
from ctypes import cast, POINTER
from pycaw.pycaw import ISimpleAudioVolume, AudioUtilities, IAudioEndpointVolume


'''
To do:
Figure out protected memory error
Serial comtype breaks occasionally
How does logging library even work 
e.args -- lachlan?
'''

# Error logging
#logging.basicConfig(filename='Error_log.log', level=logging.DEBUG)



# All Setup

SERIALNUMBER = 494283 # This needs to be assigned to the CH340B so it knows what to connect to
BAUD = 115200 # Needs to be the same as the board BAUDRATE
HANDSHAKE = '@' # Probably not necessary to have a handshake procedure

# It simplifies things greatly by having all these as globals
OPEN_SESSIONS = list() # Audio session objects
SESSION_NAMES = list() # Cleaned names ready to be sent to the board
SESSION_PIDS_GLOBAL = list()

AUDIO_ENDPOINT = None # Will eventually be used as a pointer to the audio endpoint
SESSIONS_CHANGED_FLAG = True

IDENTS = ['z', 'z']
CHANGE_MARKERS = ['#', '$']
VOLUME_BREAK = '!'
VOLUME_REQUEST = '^'
EMPTY_NAME = '-----' # What will be printed on screen if there is no session to go there

VOLUMES = [0, 0, 0]

LASTVOLUME = [0, 0, 0] # Used as a check to reduce the amount of volume changes

# This also slows down the script, lower polling rate will reduce cpu load
# Seconds between volume requests to the board, denominator is Hz polling rate
VOLUME_POLL_TIME = 1 / 5 


VOLUME_CHECKED_TIME = time.time()
AUDIO_ENDPOINT_REFRESH = 5 # Seconds between each check to see if PC audio endpoint has changed
ENDPOINT_CHECKED_TIME = time.time()
SESSION_REFRESH = 2 # Seconds between check to see if the the open audio sessions has changed
SESSION_CHECKED_TIME = time.time()

LAST_LOOP_TIME = 0
WAIT_FLAG = False


'''
Looks for and connects to the mixer via serial number programmed into CH340 chip
Takes no arguments but uses globals of baudrate, serial number, and handshake character
Sends the serial object to the global SERIAL_COM
DONE
'''
def ConnectMixer():

	global SERIAL_COM

	confir = 'f' # Used to recieve handshake from board
	connected = False
	between_tries = 2 # Seconds between connection attempts


	while (connected == False): # Keeps going until the board is connected

		open_ports = serial.tools.list_ports.comports() # Gets a new list of com ports each time

		for port in open_ports:
			device_serial = port.serial_number

			try:
				device_serial = int(device_serial)
				if (SERIALNUMBER == device_serial): # If it is the mixer board
					com_channel = port.device # Grabs the com port address, ie 'COM3'

			except:
				None
               
 


		try: 
			SERIAL_COM = serial.Serial(com_channel, BAUD, timeout=0) # Connects to port
			connected = True

		except:
			time.sleep(between_tries)



	while (confir != HANDSHAKE):

		SERIAL_COM.write(HANDSHAKE.encode())
		time.sleep(0.1)
		confir = SERIAL_COM.read().decode()
		SERIAL_COM.reset_output_buffer() # Clears the handshake and rewrites it if there is no response


	SERIAL_COM.reset_output_buffer()
	SERIAL_COM.reset_input_buffer()


	return
	
	
'''
Gets session objects list and a cleaned name list
Removes any sessions without a name or process
Takes no arguments
Will set SESSIONS_CHANGED_FLAG if there is a change in the open audio sessions
Returns none, but writes the lists to the global variables of OPEN_SESSIONS and SESSION_NAMES
DONE
'''
def AudioSessions():
	
	global OPEN_SESSIONS, SESSION_NAMES, SESSIONS_CHANGED_FLAG, SESSION_CHECKED_TIME, SESSION_PIDS_GLOBAL
	
	current_sessions = AudioUtilities.GetAllSessions() # Gets a list of all current audio session objects
	cleaned_sessions = []
	session_pids = []

	for session in current_sessions:		
		
		if (session.Process != None):
			cleaned_sessions.append(session)
			session_pids.append(session.Process.pid)
			
		else:
			
			None

		
	if session_pids != SESSION_PIDS_GLOBAL: # Will only change things if it is different to what is already there
	
		SESSIONS_CHANGED_FLAG = True
		
		SESSION_PIDS_GLOBAL = session_pids
		
		OPEN_SESSIONS.clear()
		SESSION_NAMES.clear()
		
		for session in cleaned_sessions: # Steps through the audio sessions
		
			name = session.Process.name() # Reads name of session
			name = name[0:-4] # Takes the .exe off the name
			name = name[: 16] # Ensures the name is not too long for the screen
			OPEN_SESSIONS.append(session.SimpleAudioVolume) # List of the session objects, these are what are used to change the volume
			SESSION_NAMES.append(name.capitalize()) # List of the session names, capitalized
			
	
	SESSION_CHECKED_TIME = time.time()
	
	return None

	
'''
Goes through and sees if any volume values need to be changed and then changes them
Will not change the volume if the new value is within 1% of the old one
Each encoder step is 2% if RMOD_X2 is set (or 1% with RMOD_X1)
Uses both global volume lists and the global idents list as well as the global AUDIO_ENDPOINT
Returns none
DONE
'''
def SetVolumes():

	global LASTVOLUME
	
	for channel in range(0, 3):
	
		if (abs(LASTVOLUME[channel] - VOLUMES[channel]) > 1): # Try and reduce the amount of times the volume is changed
	
			LASTVOLUME[channel] = VOLUMES[channel]
		
			if (channel == 2): # Master volume
	
				AUDIO_ENDPOINT.SetMasterVolumeLevelScalar(VOLUMES[2] / 100, None)
		
			else:
	
				id = IDENTS[channel]
				
				if (id != 'z'):
					OPEN_SESSIONS[id].SetMasterVolume(VOLUMES[channel] / 100, None) # Volume value is 0 - 1
	
	return None


'''	
Changes the active programs being managed
The channel for which the program is being changed
Uses the global lists of session names and objects
Changes the values in the global IDENTS list 
'z' is used as an identifier for when there is less then 2 open sessions and the identifier is empty
Returns none
DONE
'''
def ChangeIdents(channel):
	
	global IDENTS
	
	SERIAL_COM.write(CHANGE_MARKERS[channel].encode())
	
	if (len(SESSION_NAMES) == 0):
		IDENTS = ['z', 'z']
		
	elif (len(SESSION_NAMES) == 1): 
		IDENTS = [0, 'z']
	
	else:
		
		if (IDENTS[channel] == 'z'):
			IDENTS[channel] = 0 # If the ident was previously empty then gives it a channel to allow next part to work
		
		id = (IDENTS[channel] + 1) % len(SESSION_NAMES) # Increments IDENT by 1
		
		if (id == IDENTS[channel - 1]): # Checks if IDENT is already being used and if it is changes it
		
			id = (IDENTS[channel] + 2) % len(SESSION_NAMES)	
			
		
		IDENTS[channel] = id
	
		
	return None
	
	
'''
Sends the name of the program and its volume to the board to be displayed
Takes the channel being changed and a boolean of whether the change marker is expected by the board
If the board requested the channel change then the marker prefix is unnecessary but if the PC has decided to change 
then the prefix is used to tell the board to expect a name + volume which is read from the session and put into VOLUMES
Returns none
DONE
'''
def SendSessionName(channel):

	global VOLUMES
		
	id = IDENTS[channel]
	
	if (id == 'z'):
		
		SERIAL_COM.write(EMPTY_NAME.encode())
		SERIAL_COM.write(CHANGE_MARKERS[channel].encode())
		SERIAL_COM.write(str(VOLUMES[channel]).encode())
		
		
	else:
		
		SERIAL_COM.write(SESSION_NAMES[id].encode())
		
		SERIAL_COM.write(CHANGE_MARKERS[channel].encode())
		master_vol = str((OPEN_SESSIONS[id].GetMasterVolume()) * 100)
		VOLUMES[channel] = master_vol.split('.')[0]
		SERIAL_COM.write(VOLUMES[channel].encode())
		
		
	SERIAL_COM.write(VOLUME_BREAK.encode())
	
	return None
	
	
'''
If a new audio device is plugged in then there will be a change in the audio endpoint and this will need to be monitored for
This function sees if the endpoint is the same as before
If the endpoint has changed it sets it to whatever the PC is currently outputting to
Also forces a volume change of the master volume if the endpoint changes because windows does not carry over the volume
Returns none
DONE
'''
def CheckAndSetAudioEndpoint():
	
	global AUDIO_ENDPOINT, ENDPOINT_CHECKED_TIME
	
	device = AudioUtilities.GetSpeakers()
	interface = device.Activate(IAudioEndpointVolume._iid_, CLSCTX_ALL, None)
	new_endpoint = cast(interface, POINTER(IAudioEndpointVolume))
	
	if (new_endpoint != AUDIO_ENDPOINT):
		
		AUDIO_ENDPOINT = new_endpoint
		AUDIO_ENDPOINT.SetMasterVolumeLevelScalar(VOLUMES[2] / 100, None)
	
	ENDPOINT_CHECKED_TIME = time.time()
	return None

	
'''
Requests a list of volumes from the board using VOLUME_REQUEST
Expects a list of 3 volumes between 0 and 100 prefixed, suffixed and broken by VOLUME_BREAK
Writes these volumes into VOLUMES
Returns True if volumes were recieved and false if some other command was recieved
NEED TO GET TIMINGS
DONE OTHERWISE
'''
def RequestVolumes():

	global VOLUMES, VOLUME_CHECKED_TIME
	
	while (SERIAL_COM.in_waiting != 0):
	
		data = SERIAL_COM.read()
		if (data == HANDSHAKE):
			Initilize()
					
		elif (data == CHANGE_MARKERS[0]):
				
			ChangeIdents(0)
			SendSessionName(0)
					
		elif (data == CHANGE_MARKERS[1]):
						
			ChangeIdents(1)
			SendSessionName(1)
					
		else:
							
			data = SERIAL_COM.readline()
			print(data)
			
			
			
	VOLUME_CHECKED_TIME = time.time()
	
	SERIAL_COM.write(VOLUME_REQUEST.encode())
	request_sent = time.time()
	
	while (SERIAL_COM.in_waiting == 0 and (time.time() - request_sent < 0.5)):
		None # Waiting for a response
	
	if (SERIAL_COM.in_waiting == 0):
		
		# No response after a little bit, assume something is broken
		SERIAL_COM.write(HANDSHAKE.encode())# Try writing a handshake and seeing if there is a response
		
		while (SERIAL_COM.in_waiting == 0 and (time.time() - request_sent < 0.2)):
			None # Waiting for a response again
			
			
		if (SERIAL_COM.in_waiting != 0):
			data = SERIAL_COM.read().decode()

			
			if (data == HANDSHAKE):
				
				Initilize()
				return
				
		
		else:
		
			Initilize()
			return()
			
	
	volume_string = SERIAL_COM.readline().decode()

	
	if (CHANGE_MARKERS[0] in volume_string):
		
		ChangeIdents(0)

	
	elif (CHANGE_MARKERS[1] in volume_string):
		
		ChangeIdents(1)
		
	elif (HANDSHAKE in volume_string):
		
		None
	
	else:
		
		try:	
			volume_string = volume_string.strip(VOLUME_BREAK).split(VOLUME_BREAK) 
			VOLUMES = [int(volume) for volume in volume_string]
			return True
			
		except:
			None
		
		
	return False
		
	
'''	
Will only run on first connection or if the board is disconnected and reconnected 
The loop will stay in this function (actually in ConnectMixer) until serial com is working
Gets everything set up
Returns None
MAY NEED TO GET SOME TIMINGS
DONE OTHERWISE
'''
def Initilize():
	
	global SESSION_CHECKED_TIME, ENDPOINT_CHECKED_TIME, VOLUME_CHECKED_TIME
	
	try:
		# Ensures that everything is starting from scratch. Especially useful for when the board reset is pushed
		SERIAL_COM.close()
	
	except:
		None
		
		
	# Connects board and prepares sessions and endpoint
	ConnectMixer()
	AudioSessions()
	SESSION_REFRESH = time.time()
	
	RequestVolumes() # This is basically only to get the master volume to then apply to the endpoint
	VOLUME_CHECKED_TIME = time.time()
	
	CheckAndSetAudioEndpoint()
	ENDPOINT_CHECKED_TIME = time.time()
	
	# Sets sessions being controlled and sends their names and current volumes
	
	ChangeIdents(0)
	SendSessionName(0) 
	ChangeIdents(1)
	SendSessionName(1)
	
	return None
	

'''
Main loop function that will run constantly
Needs to:
	check board is connected
	if disconnected to do initial setup again (This will also reconnect board)
	request volumes
	set volumes
	keep track of endpoints
	keep track of open sessions	
DONE
'''
def Main():
	
	global SESSIONS_CHANGED_FLAG, LAST_LOOP_TIME, WAIT_FLAG
	
	
	try:

		if (((time.time() - LAST_LOOP_TIME) > VOLUME_POLL_TIME) or WAIT_FLAG == False):
		# Trying to reduce the cpu load by sleeping between the volume requests
			
			WAIT_FLAG = False
			
			
			if (SERIAL_COM.in_waiting != 0):
				
				data = SERIAL_COM.read().decode()
				
				if (data == HANDSHAKE):
					Initilize()
					
				elif (data == CHANGE_MARKERS[0]):
				
					ChangeIdents(0)
					SendSessionName(0)
					
				elif (data == CHANGE_MARKERS[1]):
					
					ChangeIdents(1)
					SendSessionName(1)
				
				else:
						
					data = SERIAL_COM.readline()
					print(data)
					
			
			elif ((time.time() - ENDPOINT_CHECKED_TIME) >= AUDIO_ENDPOINT_REFRESH):
					
				CheckAndSetAudioEndpoint()

					
			elif ((time.time() - SESSION_CHECKED_TIME) >= SESSION_REFRESH):
				
				AudioSessions()
					
				if (SESSIONS_CHANGED_FLAG == True):
						
					# Sets sessions being controlled and sends their names and current volumes
					ChangeIdents(0)
					SendSessionName(0) 
					ChangeIdents(1)
					SendSessionName(1)
						
					SESSIONS_CHANGED_FLAG = False
				
			else:
				
				flag = RequestVolumes()
				
				WAIT_FLAG = True
				LAST_LOOP_TIME = time.time()
				
				if (flag == True):
					SetVolumes()

		else:
			
			time.sleep(VOLUME_POLL_TIME)
	
	
	except serial.SerialException:
	
		Initilize()
		SESSIONS_CHANGED_FLAG = False
		
	except Exception as e:
	
		print(e.args)

	
	return None
	

Initilize()

while True:
	
	try:
		Main()
		
	except Exception as e:
		
		print(e.args)
		print('------------------------')		
		print(e)
