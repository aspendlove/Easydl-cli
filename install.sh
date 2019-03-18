#!/bin/bash
echo "Do you want to install python3-pip (to install youtube-dl) via apt?"
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo '
  '
  echo 'installing python3-pip'
  echo '
  '
  sudo apt install python3-pip
else
  echo '
  '
  echo 'alright'
fi
echo 'Do you want to install youtube-dl via pip3?'
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo 'alright, installing youtbe-dl'
  sudo pip3 install youtube-dl
  echo '
  '
  echo 'installing easydl'
else
  echo '
  '
  echo 'installing easydl'
fi
sudo cp "easydl" /usr/local/bin
mkdir ~/.config/easydl/
cp aliases.sh ~/.config/easydl/
cp youtube_commands.sh ~/.config/easydl/

echo '
'
echo "fully installed, you can delete this folder if you want"
exit

