This is a wrapper for youtube-dl (https://github.com/rg3/youtube-dl), a program to download youtube videos in linux. I have built this wrapper to simplify the process that it takes to download youtube videos with youtube-dl. Normally the process includes using long commands with complicated arguments, so I decided to make a script that asks you questions instead. This approach may not be the fastest way to do it, but I believe it greatly simplifies the process making it easier for new linux users. I have built this with ubuntu in mind and have only tested it on ubuntu based systems. It may work in other linux distos but don't take my word on it. This wrapper has options to install mp3 and mp4 files although through editing the youtube-dl commands in the easydl script you can change the parameters and file formats.

To install all you have to do is download the deb file in releases and run it.

To install from source download this repository and find the files easydl and install.sh. You will need to make them executable, in most distros you can do this by right clicking, going into properties, and finding an option that says something to the effect of "make executable". Once that is done open the terminal in the downloaded folder and execute install.sh in a terminal (./install.sh).
you will need to be on a system with apt or you can independently install youtube-dl and ffmpeg.

To update you either need to either go through the steps to install the new version of the source code or if you used the .deb file you can just download the new version and install the new deb. If you installed from source and come across some problems with youtube-dl you probably need to upgrade it using the command 'pip3 install --upgrade youtube-dl'

To use type "easydl" into the terminal and follow the prompts. Some notes are...
  1. on the prompt "where do you want it" you need to format your answer if you were using "cd" for example if you wanted your       music folder it would something like Music/ (I just have it running cd then the string you input)
  
  2. on the prompt url you can input youtube video and playlist urls as well as the many other platforms supported by youtube-dl
  
You can edit the youtube script in /usr/bin/ (.deb) or /usr/local/bin/ (source) to change the youtube-dl commands. (future releases will only have one install directory)
