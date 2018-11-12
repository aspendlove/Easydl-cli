#!/bin/bash
echo "using pip to try to install youtube-dl and apt to install ffmpeg (if pip is not installed apt will try to install it) youtube-dl is a dependency, if it is already installed you don't need to worry"
sudo apt install python-pip ffmpeg
sudo pip install --upgrade youtube_dl
sudo cp youtube /usr/local/bin
echo "fully installed, you can delete this folder if you want"
exit
