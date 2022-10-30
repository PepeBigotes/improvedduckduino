#!/bin/bash
cat ../logo.txt
echo "1 - Plug ARDUINO UNO into your PC with the two pins connected."
echo "    (Check the github if you have no idea what these pins are)"
echo "2 - Remove the jumper that connect pins."
echo "3 - Press ENTER"
read
echo "Resetting ARDUINO to default firmware..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash --suppress-bootloader-mem Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
dfu-programmer atmega16u2 reset
echo "1 - Unplug the ARDUINO from the PC and plug it again."
echo "2 - Upload the code into ARDUINO using Arduino IDE"
echo "3 - Connect two pins to reset ARDUINO"
echo "4 - Remove the jumper that connect two pins"
echo "5 - Press ENTER"
read
echo "Writing Keyboard Firmware..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash Arduino-keyboard-0.3.hex
dfu-programmer atmega16u2 reset
echo "Done!"

