#! /bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root, try again with 'sudo' parameter:"
    echo "'sudo ./updateduckduino' or 'sudo !!'"
    exit
fi
cat logo.txt
echo "CAUTION!!! This script REMOVES COMPLETELY the directory called 'improvedduckduino',"
echo "this includes any changes you have made in said directory or a directory with the same name."
echo "This script will not work if the directory name is other than 'improcedduckduino'"
echo "Select one of the next options:"
echo "[c] cancel"
echo "[b] make a backup/copy of your directory (will override current backup)"
echo "[i] ignore and remove anyways"
read -p "-Your option[c/b/i]: " option

if [[ $option = c ]]
then
  echo "Selected option: cancel"
  echo ""

  echo "[SCRIPT]Exiting script..."
  exit
elif [[ $option = b ]]
then
  echo "Selected option: make backup"
  echo "Type the backup name (leave blank for default)"
  echo "Default is 'COPYimprovedduckduino'"
  read -p "Backup name: " bkupname
  if [ -z "$bkupname" ]
    then
    bkupname=COPYimprovedduckduino
    fi
  echo "[SCRIPT]Backup name set to '"$bkupname"'"

  echo "[SCRIPT]Going back one directory..."
  cd ..
  echo "[SCRIPT]Creating '"$bkupname"' directory..."
  mkdir $bkupname
  echo "[SCRIPT]Copying 'improvedduckduino' directory to "$bkupname"..."
  cp -r improvedduckduino $bkupname
elif [[ $option = i ]]
then
  echo "Selected option: ignore"
  echo "Are you sure? Hit ENTER to confirm or CTRL+C to calcel"
  read
  echo ""

  echo "[SCRIPT]Going back one directory..."
  cd ..
else
echo "[ERROR]Invalid option, please type one character in lowercase. For example:"
echo "Incorrect: B, backup, BACKUP"
echo "Correct: b"
echo ""
echo "Press ENTER to exit script"
read
echo "[SCRIPT]Exiting script..."
exit
fi


echo "[SCRIPT]Removing 'improvedduckduino' directory..."
rm -r improvedduckduino
echo "[SCRIPT]Cloning 'improvedduckduino' git..."
git clone https://www.github.com/PepeBigotes/improvedduckduino
echo "[SCRIPT]DONE!"
