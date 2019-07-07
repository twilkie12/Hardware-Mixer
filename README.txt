As a disclaimer, I am an amateur at programming and hardware design and so cannot guarantee any of this will work for you.
It's a bit buggy and probably not written to any decent standard but it is what it is.
Will be adding a plastic enclosure at some point, probably 3D printed base with acrylic top.
Ask nicely and I can send you a PCB for cost + shipping, ostensibly to test but any help adding to or fixing things would be appreciated.



Idea is for a board with 2 rotary encoders (tried pots, didn't really work), a slide pot and 16x2 LCD screen with PCF85741 i2c backpack
used to control the windows 10 volume mixer program with hardware.

Controls 2 programs volume at a time, with the name of the active programs given on the LCD screen and the active programs changed by
pressing the rotary encoder button. Master volume is controlled by slider.


Uses Atmega 168 with arduino bootloader (changed from esp8266) to run the board with PIC16f15323's reading the rotary encoders
(Fattoresaimon's i2cencoder project, https://github.com/Fattoresaimon/i2cencoder). 

AndreMiras's pycaw library used to control Windows volume mixer (https://github.com/AndreMiras/pycaw). 

Francisco Malpartida's i2cliquidcrystal library for arduino (https://bitbucket.org/fmalpartida/new-liquidcrystal/wiki/Home) 
(Need to make sure you have the right one as there are quite a few libraries with the same names with slightly different implementations)

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



The serial com object sometimes has errors, need to find the error message but something about Vtable lookup, rare and also fixed on
fresh windows install

Prints: (-2004287484, None, (None, None, None, 0, None))
Need to figure out where from and why

Occasionally PC doesn't decode serial input, not a big deal it tends to just ignore it

The atmega sometimes gets stuck in a send and will stop working and just be recieving constant request markers from the PC which 
will then write to the screen

Pressing reset on board takes a significant amount of time for the computer to realise and re-initilize -- Fixed?


Could possibly add PID recognition for programs, default to whatever name is already there but for some programs maybe have a list of
PIDS with names the user wants to have used, ie windows systems sounds can be void, "windowsshellexperience" or "Explorer" depending on
how windows feels on that day


Add play/pause, next, back buttons - Need to find python library to send windows keyboard commands

Make a config file to have some settings in it for the program. Leave a default setting but maybe some adjustable parameters

RBG lighting settings could be funny, need to figure out how to send to board 
	How many lights, what type, might need to get drivers, i2c maybe too expensive, worth effort?, probably use config file
  
 Look at getting rid of i2c backpack on LCD to cut cost, have the spare pins for it off IC
 
 Is current hardware debouncing good enough -- need to get into ece labs for oscills
 
 Fix PCB/schematic design errors -  it's just ugly
	
