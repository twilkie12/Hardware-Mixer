As a disclaimer, I am an amateur at programming and hardware design and so cannot guarantee any of this will work for you.
Will only work for Windows 10 but the hardware could easily be used with an equivalent program on Linux.
It's a bit buggy and probably not written to any decent standard but it is what it is.
This document is less of a README and more of a loose, constantly changing list of things I need to do, need to fix, want to add, need 
to look into or just think some time in the future could be interesting to look at. As such it is basically a brain dump and not
hugely important; nothing past the second paragraph will be useful for actually creating/setting up the board.
Will be adding a plastic enclosure at some point, probably 3D printed base with acrylic top.
Ask and I can send you a (possibly assembled for a fee) PCB for cost + shipping, ostensibly to test and help with prototyping but with 
no obligation to do so however any help adding to or fixing things would be appreciated.
I am open to any and all feedback.

If you decide to get the PCB manufactured yourself and put it all together yourself then some notes:

	- The Kicad board routing is currently broken because of the way I did the pours. Rebuilding it will give you a single 5V pour
	  on the top and a single GND pour on the bottom (maybe, your milage may vary). This is an issue because there is supposed to be 
	  THREE small GND zones on the top surface, one each on the right of the PIC16f15323's and one off the GND pin of the micro-usb
	  connector with a single 5V zone on the rest of the surface. I will at some stage fix this but I have already ordered the
	  boards and the file broke afterwards so it is not a top priority for me.
	- The python script looks for a specific serial number on a USB device and then trys to connect to that. You will need to use
	  a CH340B as this is allows you to change the EEPROM and write the serial number to the chip. The software and drivers to
	  do this and use CH340 chips are ahead but I will say that while the drivers are from the manufactuers site the CFG program is
	  not, with the most official looking download being from the WCH forum; and I really cannot condone downloading a random .rar
	  from unknown sources. I have not downloaded the CFG from this source instead I initially found it only on a random chinese
	  filehosting site which is probably even worse.
	  (Drivers: http://www.wch.cn/download/CH341SER_EXE.html, and the program used to configure the EEPROM:
	  http://wch.cn/index.php/bbs/thread-64449-2.html -- Called CH340CFG, there are multiple sources available through google). 
	- As a warning you ONLY want to change the serial number on the chipe, changing VID, or PID WILL make the drivers stop working
	  until you manually reassign the driver to the device, not recommended if you do not know your way around your PC.
	- You will need an Arduino, USBasp or similar to burn the Arduino bootloader to the ATMEGA 168 with Arduino IDE as well as 
	  needing a PICKIT and ZIF socket to flash the PIC's. If you are so inclined adding ISP points to the PCB to flash the PIC's
	  would be very simple and I will likely add them in the next revision.
	

Idea is for a board with 2 rotary encoders (tried pots, didn't really work nicely), a slide pot and 16x2 LCD screen with PCF85741 i2c
backpack used to control the windows 10 volume mixer program with hardware.

Controls 2 programs volume at a time, with the name of the active programs given on the LCD screen and the active programs changed by
pressing the rotary encoder button. Master volume is controlled by slider.

Uses Atmega 168 (could use 328 easily) with arduino to run the board with PIC16f15323's reading the rotary encoders (Fattoresaimon's
i2cencoder project, https://github.com/Fattoresaimon/i2cencoder). 

AndreMiras's pycaw library used to control Windows volume mixer (https://github.com/AndreMiras/pycaw). 

Francisco Malpartida's i2cliquidcrystal library for arduino (https://bitbucket.org/fmalpartida/new-liquidcrystal/wiki/Home) 
(Need to make sure you have the right one as there are quite a few libraries with the same names with slightly different
implementations)

Uses CH340B USB-Serial chip for it's EEPROM to allow python script to recognise board (http://www.wch.cn/products/CH340.html),
(https://lcsc.com/product-detail/USB_CH340B_C81010.html).





To do:

Biggest thing is to make LCD mount on the pcb directly rather then through floating
Remove i2c backpack and just communicate directly using pins on LCD will reduce cost and hassle
This should reduce footprint and required height of the case as well as look neater with no cables inside casing
Also could make backlight/contrast easily adjustable via mounted pots on PCB - Backlight via PWM + mosfet?

Add mounting holes to PCB
Adjust footprint of 6 pin ISP header to show pin 1
Change names on breakout header to say the pin number it is connected to
Put in solder jumpers to turn enable/disable power and data transmission indicator LED's
Label reset and calibration buttons 

Source dupont right angle 1x4 and 2x3 headers precut - possibly have 2x3 but in bulk only --Done-ish
Config file and possibly send config information to board as part of initilisation
Calibration of slide pot, button done, need to write code
Look at possibly changing usb connector to something stronger then micro b
Finalise case material and design - Clear acrylic laser cut top plate need to decide on bottom half


Python code does everything decently well, need to look at getting a lib for windows media buttons

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



The serial com object sometimes has errors, need to find the error message but something about Vtable lookup, rare and also seemingly
fixed on fresh windows install

Prints: (-2004287484, None, (None, None, None, 0, None))
Need to figure out where from and why, prints it because python program prints out errors or serial coms if it gets confused

Occasionally PC doesn't decode serial input, not a big deal it tends to just ignore it and then polls again .2s later

The atmega sometimes gets stuck in a send and will stop working and just be recieving constant request markers from the PC which 
will then write to the screen -- fixed with a timeout kind of thing on both ends

Pressing reset on board takes a significant amount of time for the computer to realise and re-initilize -- Fixed?


Could possibly add PID recognition for programs, default to whatever name is already there but for some programs maybe have a list of
PIDS with names the user wants to have used, ie windows systems sounds can be void, "windowsshellexperience" or "Explorer" depending on
how windows feels on that day a list of known pids with their custom names could be made and edited by the user
Probably should check if program PID's are static or dynamic 
Process is psutil object
	--PID is dynamic but can look up the Process.exe() to see the program file for the sound stream, that should be stable


Could add play/pause, next, back buttons - Need to find python library to send windows keyboard commands and decide on how to send
those/what markers

Make a config file to have some settings in it for the program. Leave a default setting but maybe some adjustable parameters
	-- This could definitly be put into a GUI to control rgb values, backlight brightness, program name recognition etc.
	
	
RBG lighting settings could be funny, need to figure out how to send to board 
	How many lights, what type, might need to get drivers, i2c maybe too expensive, worth effort?, probably use config file
		-- Lots of spare PWM pins off IC
		-- Chuck small transistors onto the PWM pins, super cheap to get transistors in packs of 100 or whatever
		-- LED's aren't super cheap but maybe in bulk and would look pretty cool
		-- Dimming for LEDs could be an issue as well as choosing where to put them so they aren't facing up and just blinding
		   the user through the top clear plate, but also bottom of pcb currently planned to be enclosed by casing
  
 Look at getting rid of i2c backpack on LCD to cut cost, have the spare pins for it off IC and it might speed everything up although 
 that hasn't been a noticable problem yet even with only 16MHz atmega168
 		-- Using higher freq is possible with 5V I think, need to have another look at the data sheet
 
 Is current hardware debouncing good enough -- need to get into ece labs for oscills
 
 Fix PCB/schematic design errors -  it's just ugly
	
