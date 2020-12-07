#!/bin/bash
youtubeVIDEO()
{
#this is the command that will run to download a video ($1 will be replaced with the url)
if command -v 'youtube-dl' &> /dev/null
then
  #youtube-dl command
  youtube-dl -f mp4 -o '%(title)s.%(ext)s' $1
elif command -v 'youtube-dlc' &> /dev/null
then
  #yt-dlc command
  youtube-dlc -f mp4 -o '%(title)s.%(ext)s' $1
else
  echo 'youtube-dl or yt-dlc is required for more support please reference the readme'
fi
}
youtubeAUDIO()
{
#this is the command that will run to download audio ($1 will be replaced with the url)
if command -v 'youtube-dl' &> /dev/null
then
  youtube-dl -x --audio-format mp3 -o '%(title)s.%(ext)s' $1
elif command -v 'youtube-dlc' &> /dev/null
then
  youtube-dlc -x --audio-format mp3 -o '%(title)s.%(ext)s' $1
else
  echo 'youtube-dl or yt-dlc is required for more support please reference the readme'
fi
}
