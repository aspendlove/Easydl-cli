#!/bin/bash
echo 'Installing Easydl'
echo 'You will need ffmpeg, and youtube-dl or yt-dlp installed to use this program.'
echo 'For more information consult the README included here https://github.com/copperly123/Easydl'

restart=0

#check if /usr/local/bin exists
if [[ ! -d /usr/local/bin/ ]]
then
	#if not create it
	sudo mkdir /usr/local/
	sudo mkdir /usr/local/bin/
	#add it to path
	export PATH=$PATH:/usr/local/bin
	#and set the restart flag
	restart=1
fi

chmod a+x alias.sh easydl uninstall.sh youtube_commands.sh
#copy the main executable to user/local/bin/
sudo cp easydl /usr/local/bin

#check if the config folder exists
if [[ ! -d ~/.config/easydl/ ]]
then
	#if not create it
	mkdir ~/.config/easydl/
fi

cp alias.sh ~/.config/easydl/
cp youtube_commands.sh ~/.config/easydl/
cp README.md ~/.config/easydl/

if [ $restart != 1 ]
then
	echo "fully installed"
else
	echo "you will need to reboot to fully install"
fi
exit
