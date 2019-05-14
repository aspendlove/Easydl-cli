**Do not use this to bypass copyright law**

This is a wrapper for youtube-dl (https://github.com/rg3/youtube-dl), a program to download youtube videos in linux. I have built this wrapper to simplify the process that it takes to download youtube videos with youtube-dl. Normally the process includes using long commands with complicated arguments, so I decided to make a script that asks you questions instead. This approach may not be the fastest way to do it, but I believe it greatly simplifies the process making it easier for new linux users. I have built this with ubuntu in mind and have only tested it on ubuntu based systems. It may work in other linux distos but don't take my word on it. This wrapper has options to install mp3 and mp4 files. You can edit the youtube-dl commands run by running "easydl -y" in your terminal. This will open a file in nano and the places to change the commands are marked with comments.

You can now add aliases by running easydl -a (coming from easydl -alias if it helps you remember). This basically makes a nickname for a specific location on your machine so that you don't have to type out the entire directory every time. You can list your directories by running easydl -al (coming from easydl -alias list). When you set an alias it is stored in ~/.config/easydl/config.sh (they are appended after a bunch of variables being set to nothing) You can have up to 5 aliases. To delete aliases you need to delete the lines in the config.sh file. I will look into adding a man page for this application to help with the command arguments.

To install go to the releases tab and download the latest zip file. Once downloaded extract the files into a directory where you want to keep it (you could delete the folder and the program will still work but you will have to redownload it to get the uninstall script). After that open up the downloaded folder and right click on the "install.sh" file. Click on properties and find an option to the effect of "allow executing file as a program" (you can google "make a shell script executable" for more help) then open the terminal ("cd <path to directory>" or right click in file manager and choose "open in terminal")in the downloaded folder and execute install.sh (./install.sh).
If you are on a system not using apt then you will have to install youtube-dl yourself (preferably using python3-pip (pip3 install youtube-dl) to get the latest version)

To use type "easydl" into the terminal and follow the prompts. Some notes are...
  1. on the prompt "where do you want it" you need to format your answer if you were using "cd" for example if you wanted your music folder it would something like "Music" (I just have it running cd from the home directory then the string you input)
  
  2. on the prompt url you can input youtube video and playlist urls as well as the many other platforms supported by youtube-dl

ALL COMMAND ARGUMENTS

"easydl" downloads youtube videos and songs

"easydl -a" adds an alias

"easydl -al" opens nano so you can view and change your aliases

"easydl -y" opens nano so you can change the youtube-dl commands

