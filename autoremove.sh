#! /bin/bash
cat logo.txt
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root, try again with 'sudo' parameter:"
    echo "'sudo ./updateduckduino' or 'sudo !!'"
    exit
fi

echo "CAUTION!!! This script REMOVES COMPLETELY the directory called 'improvedduckduino',"
echo "this includes any changes you have made in said directory or a directory with the same name."
echo "This script will not work if the directory name is other than 'improcedduckduino'"
read -p "Do you really want to DELETE the directory? [y/n]: " option
  if [[ $option = y ]]; then
  echo "Are you sure? Hit ENTER to confirm or CTRL+C to calcel"
  read
  echo ""
  echo "[SCRIPT]Going back one directory..."
  cd ..
  echo "[SCRIPT]Removing 'improvedduckduino' directory..."
  rm -r improvedduckduino
  echo "[SCRIPT]DONE!"
  elif [[ $option = n ]];then
  echo "[SCRIPT]Exiting script..."
  exit
  else 
  echo "[ERROR] Invalid character, please use lowercase"
  exit
  fi
