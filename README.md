# Version
1.1.0

- Initial release (port from GP2X-Wiz)

Welcome to DINGUX-Write

Written by Ludovic.
Jacomme also known as Zx-81 (zx81.zx81@gmail.com)
Zx-81 alias Ludovic Jacomme
Ludovic Jacomme (zx81.zx81@gmail.com)
(see http://zx81.zx81.free.fr/)


# Others authors
    PSPWrite    : PSP Version
    GP2XWrite   : GP2X-F100 Version
    WizWrite    : GP2X-WIZ Version
    DinguxWrite : Dingoo/Dingux Version


# INTRODUCTION   

  DINGUX Write is a simple ASCII text editor, nothing compared to Open office, but good enough to edit any text file (even big files) on your DINGOO.

  This package is under GPL Copyright, read COPYING file for more information about it.

  Special thanks to Gruso for those beautiful background images !


# CONTROL

2.1 - Virtual keyboard

In the editor window, press Select to open/close the On-Screen keyboard.

Use Analog stick to choose one of the 9 squares, and use Y, A, X and B to choose one of the 4 letters of the highlighted square.

Select  Disable virtual keyboard

L/R     Navigate between different keyboard panels 

2.2 - Standard keys

When the virtual keyboard is off then the following mapping is done :

    Up          Move cursor up
    Down        Move cursor down
    Left        Move cursor left
    Right       Move cursor right
    X           Backspace
    Y           Delete
    A           Space 
    B           Return
    Menu        Menu
    Select      Virtual keyboard

    L+Up        First line
    L+Down      Last line
    L+Right     End of the line
    L+Left      Beginning of the line

    L+Menu      Help

    L+X         First line
    L+B         Last line
    L+Y         Beginning of the line
    L+A         End of the line
    
    R+Up        Page up
    R+Down      Page down
    R+Left      Word left
    R+Right     Word right

    R+Menu      Selection mode

    R+X         Copy
    R+B         Cut
    R+Y         Rewrap paragraph
    R+A         Paste


3.3 Touch screen

  This version of DinguxWrite supports the touch screen.

3.3.1 - On the virtual keyboard panel

  Using the touch screen you can click on the letter you want, and drawing a  line vertically or horizontally (on the virtual keyboard screen) you can navigate between the different keyboard panels.

3.3.2 - Editor menu 

  The touch screen can be used to move the cursor on a position with a simple click. And then you can :

    draw a line up    : page up
    draw a line down  : page down
    draw a line left  : first column of the current line
    draw a line right : last column of the current line

3.3.3 - Main menu

  You can select the line you want and click to select the option you want.

3.3.4 - File requester menu

  You can use the virtual keyboard as previously described.

  If you press the touch screen in the first line, current selection goes up, and if you press the touch screen in the last line, current selection goes down. You can draw a line left / right to do page up / down.
  
  You can open the file you want by a simple click.

3.3.5 - Help menu

    draw a line up/left     : page up
    draw a line down/right  : page down

3.3.6 - Settings menu

  You can select the line you want and click to select the option you want. Just click on left or right part of the menu option name to respectively decrease or increase its value.


# SETTINGS

The editor menu let you change colors and some other options.  If you want to change the background or foreground color in the editor window or to toggle between DOS mode (with \r\n characters for cariage return), to expand tabulations etc ...
 
WARNING: This editor will replace all tabulation by spaces when the expand tab option is set. You can specify the number of spaces in options menu.
  
# COMPILATION

  It has been developped under Linux FC9 using gcc with DINGUX SDK. 
  
  All tests have been done using a Dingoo with Dingux (release 20090916) installed To rebuild the homebrew run the Makefile in the src archive.


  Enjoy,
  
         Zx


# COMPILATION FOR GWC0/RG350 on LINUX
  Developped under Linux Ubuntu / Visual Studio Code / GCC / GCW0 toolchain
  http://songofstorm.com/tutorial-gcw-zero/
  
    Compile:
        ./build_gcw0.sh

    Clean:
        ./clean_gcw0.sh

    Release: 
        ./build_gcw0.sh create release file rg350-write.opk on ./build/ folder

  Enjoy,
  
         Jorge Hontoria
