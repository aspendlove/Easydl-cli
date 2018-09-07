This is a wrapper for youtube-dl (https://github.com/rg3/youtube-dl), a program to download youtube videos in linux. I have built this wrapper with ubuntu in mind and have only tested it on ubuntu based systems. It may work in other linux distos but don't take my word on it. This wrapper has options to install mp3 and mp4 files although through editing the youtube-dl commands in the youtube.sh script you can change the parameters and file formats.

To install open the terminal in the downloaded folder and execute install.sh in a terminal (./install.sh).
you will need to be on a system with apt or you can independently install youtube-dl and ffmpeg.

To use type "youtube" into the terminal and follow the prompts. Some notes are...
  1. on the prompt "where do you want it" you need to format your answer if you were using "cd" for example if you wanted your       music folder it would something like Music/ (I just have it running cd then the string you input)
  
  2. on the prompt url you can input youtube video and playlist urls
  
You can edit the youtube script in /usr/local/bin to change the youtube-dl commands.
