Idea is for a board with 2 rotary encoders, a slide pot and 16x2 LCD screen with PCF85741 i2c backpack used to control the windows 10 volume mixer program with hardware.
Uses Atmega 168 with arduino bootloader (changed from esp8266) to run the board with PIC16f15323's reading the rotary encoders (Fattoresaimon's i2cencoder project, https://github.com/Fattoresaimon/i2cencoder). 
AndreMiras's pycaw library used to control Windows volume mixer (https://github.com/AndreMiras/pycaw). 
Francisco Malpartida's i2cliquidcrystal library for arduino (https://bitbucket.org/fmalpartida/new-liquidcrystal/wiki/Home) (Need to make sure you have the right one as there are quite a few libraries with the same names with slightly different implementations)
Uses CH340B USB-Serial chip for it's EEPROM to allow python script to recognise board (http://www.wch.cn/products/CH340.html).





To do:

Source dupont right angle 1x4 and 2x3 headers precut - possibly have 2x3 but in bulk only
Config file and possibly send config information to board as part of initilisation
Calibration of slide pot, button done, write code
Look at changing usb connector to something stronger then micro b
Finalise case material and design.

Python code does everything decently well

Errors to solve/fix:

-- This seems to be fixed by using a new windows install
Exception ignored in: <bound method _compointer_base.__del__ of <POINTER(IUnknown) ptr=0x2d31688 at 3000710>>
Traceback (most recent call last):
  File "D:\Programming\Python\lib\site-packages\comtypes\__init__.py", line 918, in __del__
    self.Release()
  File "D:\Programming\Python\lib\site-packages\comtypes\__init__.py", line 1172, in Release
    return self.__com_Release()
OSError: exception: access violation writing 0x00000000
Exception ignored in: <bound method _compointer_base.__del__ of <POINTER(IUnknown) ptr=0x2d31ab0 at 3000cb0>>
Traceback (most recent call last):
  File "D:\Programming\Python\lib\site-packages\comtypes\__init__.py", line 918, in __del__
    self.Release()
  File "D:\Programming\Python\lib\site-packages\comtypes\__init__.py", line 1172, in Release
    return self.__com_Release()
OSError: exception: access violation writing 0x00000000

Seems to be some sort of issue with the ctypes attempting to write to protected memory addresses.
New pointer is being defined and put into memory every time it checks for change in sessions or change in endpoint



The serial com object sometimes has errors, need to find the error message but something about Vtable lookup, rare and also fixed on fresh windows install

Prints: (-2004287484, None, (None, None, None, 0, None))
Need to figure out where from and why

Occasionally PC doesn't decode serial input, not a big deal it tends to just ignore it

The atmega sometimes gets stuck in a send and will stop working and just be recieving constant request markers from the PC which will then write to the screen

Pressing reset on board takes a significant amount of time for the computer to realise and re-initilize -- Fixed?


Could possibly add PID recognition for programs, default to whatever name is already there but for some programs maybe have a list of PIDS with names the user wants to have used, ie windows systems sounds can be void, "windowsshellexperience" or "Explorer" depending on how windows feels on that day


Add play/pause, next, back buttons - Need to find python library to send windows keyboard commands

Make a config file to have some settings in it for the program. Leave a default setting but maybe some adjustable parameters:
	PID recognition as above
	RBG lighting settings to send to board - how many, might need to get drivers i2c is too expensive
  
 Look at getting rid of i2c backpack on LCD to cut cost, have spare pins for it
 
 Does hardware debouncing work
 
 Fix PCB/schematic design errors
	
