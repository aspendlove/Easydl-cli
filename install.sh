#!/bin/bash
echo "Do you want to install youtube-dl and ffmpeg via apt?"
read -p 'yes or no> ' yorn
if [ "${yorn}" = 'yes' ]
then
  echo '
  '
  echo 'installing youtube-dl and ffmpeg'
  echo '
  '
  sudo apt install youtube-dl ffmpeg
  echo '
  '
  echo 'installing easydl'
  echo '
  '
  
else
  echo '
  '
  echo 'alright, installing easydl'
fi
sudo cp "easydl" /usr/local/bin
echo '
'
echo "fully installed, you can delete this folder if you want"
exit
