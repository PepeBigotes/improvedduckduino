#!/bin/bash
echo "      _            _       _       _              "
echo "     | |          | |     | |     (_)             "
echo "   __| |_   _  ___| | ____| |_   _ _ _ __   ___   "
echo "  / _` | | | |/ __| |/ / _` | | | | | '_ \ / _ \  "
echo " | (_| | |_| | (__|   < (_| | |_| | | | | | (_) | "
echo "  \__,_|\__,_|\___|_|\_\__,_|\__,_|_|_| |_|\___/  "
echo ""
echo "Original duckduino tool created by Lacerda53"
echo "Improved By PepeBigotes"
echo "https://www.github.com/PepeBigotes/improvedduckduino/"
echo "______________________________________________________"
echo ""

echo "1 - Plug ARDUINO UNO into your PC with the two pins connected."
echo "    (Check out the readme file if you have no idea what these pins are)"
echo "2 - Remove the jumper that connect pins."
echo "3 - Press ENTER"
read
echo "Resetting ARDUINO to default firmware..."
dfu-programmer atmega16u2 erase
dfu-programmer atmega16u2 flash --suppress-bootloader-mem Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
dfu-programmer atmega16u2 reset
echo "1 - Unplug the ARDUINO from the PC and plug it in again."
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

