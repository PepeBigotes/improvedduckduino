#! /bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root, try again with 'sudo' parameter:"
    echo "'sudo ./updateduckduino' or 'sudo !!'"
    exit
fi
cat logo.txt
echo "This scripts installs the dependencies of the duckduino tool,"
echo "there are only 2 dependencies:"
echo "-dfu-programmer: to modify the arduino firmware"
echo "-Arduino IDE: to upload the code/payload to arduino"
echo ""
echo "Arduino IDE can be downloaded externaly from https://www.arduino.cc/en/software or with the 'arduino' packet"
echo "If you already installed Arduino IDE from the previous page, you probably don't need the packet"
read -p "Would you like to install the 'arduino' packet? [y/n]" option

if [[ $option = y ]]
then
  echo "Selected option: Install 'arduino' packet"
  echo ""
  apt update
  apt install dfu-programmer arduino
  echo "Done!"
elif [[ $option = n ]]
then
echo "Selected option: Do not install 'arduino' packet"
apt update
apt install dfu-programmer
echo "Done!"
else
echo "[ERROR]Invalid option, please use lowercase."
exit
fi
