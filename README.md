# Do not use this to bypass copyright law

## Easydl
This is a wrapper for youtube-dl (https://github.com/rg3/youtube-dl), a program to download videos from YouTube and many other sites in Linux (https://ytdl-org.github.io/youtube-dl/supportedsites.html). I have built this wrapper to simplify the process of downloading videos with youtube-dl. Typically, the process includes using long commands with complicated arguments, so I decided to make a script that asks you questions instead. This approach may not be the fastest way to do it, but I believe it greatly simplifies the process, making it easier for new Linux users. This utility should work on any Linux distro as long as you have youtube-dl installed. By default, this wrapper has options to install mp3 and mp4 files. You can edit the youtube-dl commands to change these and other options by running "easydl -y" in your terminal. This will open a file in nano, and the places to change the commands are marked with comments.

## Installation
Before installing, you need to make sure you have youtube-dl installed. There are multiple ways of achieving this, but you can find it in the default repos of many distros. Youtube-dl also has their own set of universal instructions on https://ytdl-org.github.io/youtube-dl/download.html. If you're on Ubuntu the installer can install youtube-dl for you, you just need to answer yes to installing python-pip3 and youtube-dl

Once you have youtube-dl, you need to go to the releases tab on this GitHub page (https://github.com/copperly123/Easydl/releases) and download the latest zip file. Once downloaded, extract the files into a directory where you want to keep it (you could delete the folder and the program will still work, but you will have to redownload it to get the uninstall script). After that, open up the unzipped folder, right-click on an empty space and chose "open in terminal". Once in the terminal, type these commands

```
chmod a+x install.sh
sh install.sh
```

and follow the directions. When finished, Easydl will be installed!

### Installation Video Tutorial
Below is a more visual explanation of the installation process and basic usage.

[![Watch the video](https://img.youtube.com/vi/z9ZjHHCu1M8/0.jpg)](https://youtu.be/z9ZjHHCu1M8)

## USAGE

### Aliases
Aliases make a nickname for a specific location on your machine so that you don't have to type out the entire directory every time. You can list your directories by running easydl -d. You can also add new ones with alias -a, remove them with alias -r, edit them with alias -e and clear them all with alias -c.

### General Usage
To use, type "easydl" into the terminal and follow the prompts. Some notes are...
  1. On the prompt "where do you want it" you need to format your answer if you were using "cd" for example if you wanted your music folder it would something like "~/Music/" or "/home/user/Music/"

  2. On the URL prompt you can input YouTube video and playlist URLs as well links to videos on the many other platforms supported by youtube-dl

## ALL COMMAND ARGUMENTS

"easydl" downloads YouTube videos and songs

"easydl -h" shows a help message with all the possible commands

"easydl --readme" opens this README in the command line (ctrl-x to exit)

"easydl -a" adds an alias

"easydl -d" displays the details on all of your current aliases

"easydl -e" edits an existing alias

"easydl -r" removes an alias

"easydl -c" clears all created aliases

"easydl -y" opens nano, so you can change the youtube-dl commands

"easydl -i" creates a new alias file, this could be useful if you accidentally deleted it and need a new one. It should not be needed in general use.

"easydl --cut" opens the cutter utility

