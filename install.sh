#!/bin/bash
echo 'Installing Easydl'
echo 'You will need youtube-dl installed to use this program.'
echo 'For more information consult the README included here https://github.com/copperly123/Easydl'
#variable to check if you need to restart
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
#give all executables executable permissions
chmod a+x alias.sh easydl uninstall.sh youtube_commands.sh
#ask if you want to install python3-pip via apt
# echo "Do you want to install python3-pip (aka, pip3) via apt? This will be used to install youtube-dl later. If you don't want to install it here you can install it yourself separately"
# read -p 'yes or no> ' yorn
# if [ "${yorn}" = 'yes' ]
# then
# 	#if yes, then install it via apt
#   echo '
#   '
#   echo 'installing python3-pip'
#   echo '
#   '
#   sudo apt install python3-pip
# else
# 	#if no then just say "alright"
#   echo '
#   '
#   echo 'alright'
# fi
# #ask the user if they want to instal youtube-dl via pip3
# echo 'Do you want to install youtube-dl via pip3?'
# read -p 'yes or no> ' yorn
# if [ "${yorn}" = 'yes' ]
# then
# 	#if yes then install youtube-dl
#   echo 'alright, installing youtbe-dl'
#   sudo pip3 install youtube-dl
#   echo '
#   '
#   echo 'installing easydl'
# else
# 	#otherwise say "installing easydl"
#   echo '
#   '
#   echo 'installing easydl'
# fi
#copy the main executable to user/local/bin/
sudo cp easydl /usr/local/bin
#check if the config folder exists
if [[ ! -d ~/.config/easydl/ ]]
then
	#if not create it
	mkdir ~/.config/easydl/
fi
#copy the files alias.sh and youtube_commands.sh to that folder
cp alias.sh ~/.config/easydl/
cp youtube_commands.sh ~/.config/easydl/
cp README.md ~/.config/easydl/
#check if restart flag is set
if [ $restart != 1 ]
then
	#if not then tell the user that the program is installed
	echo "fully installed"
else
	#if so then tell them that they will need to reboot"
	echo "you will need to reboot to fully install"
fi
exit
