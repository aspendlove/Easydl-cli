#!/bin/bash
#ask if you want to uninstall youtube-dl
echo 'Do you want to uninstall youtube-dl via pip3?'
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo 'alright, uninstalling youtbe-dl'
  #uninstall youtube-dl
  sudo pip3 uninstall youtube-dl
else
  echo 'alright'
fi
#ask if you want to uninstall python3-pip aka pip3
echo "Do you want to uninstall python3-pip (what was used to install youtube-dl) via apt?"
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo '
  '
  echo 'uninstalling python3-pip'
  echo '
  '
  #uninstall python3-pip via apt
  sudo apt purge python3-pip
  echo ''
  #tell the user that easydl is being uninstalled
  echo 'uninstalling easydl'
else
  echo '
  '
  #tell the user that easydl is being unintalled
  echo 'alright, uninstalling easydl'
fi
#delete the easydl executable
sudo rm /usr/local/bin/easydl
#delete the configuration folder
rm -rf ~/.config/easydl/

echo '
'
#tell the user it's done
echo "fully uninstalled"
exit
