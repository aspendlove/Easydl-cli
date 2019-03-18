#!/bin/bash
echo "Do you want to uninstall python3-pip (what was used to install youtube-dl) via apt?"
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo '
  '
  echo 'uninstalling python3-pip'
  echo '
  '
  sudo apt purge python3-pip
else
  echo '
  '
  echo 'alright'
fi
echo 'Do you want to uninstall youtube-dl via pip3?'
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo 'alright, uninstalling youtbe-dl'
  sudo pip3 uninstall youtube-dl
  echo '
  '
  echo 'uninstalling easydl'
else
  echo '
  '
  echo 'uninstalling easydl'
fi
sudo rm /usr/local/bin/easydl
rm -rf ~/.config/easydl/

echo '
'
echo "fully uninstalled"
exit

