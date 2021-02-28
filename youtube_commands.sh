#!/bin/bash
YoutubeVideo()
{
  #this is the command that will run to download a video ($1 will be replaced with the url)
  if command -v 'youtube-dl' &> /dev/null
  then
    #youtube-dl command
    youtube-dl --no-playlist -f mp4 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dlc' &> /dev/null
  then
    #yt-dlc command
    youtube-dlc --no-playlist -f mp4 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlc is required for more support please reference the readme'
  fi
}
YoutubeAudio()
{
  #YoutubeAudio url audioformat
  #this is the command that will run to download audio ($1 will be replaced with the url)
  if command -v 'youtube-dl' &> /dev/null
  then
    #youtube-dl command
    youtube-dl --no-playlist -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dlc' &> /dev/null
  then
    #youtube-dlc command
    youtube-dlc --no-playlist -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlc is required for more support please reference the readme'
  fi
}
YoutubeAudioPlaylist()
{
  #YoutubeAudio url audioformat
  #this is the command that will run to download audio ($1 will be replaced with the url)
  if command -v 'youtube-dl' &> /dev/null
  then
    #youtube-dl command
    youtube-dl -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dlc' &> /dev/null
  then
    #youtube-dlc command
    youtube-dlc -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlc is required for more support please reference the readme'
  fi
}
YoutubeVideoPlaylist()
{
  #this is the command that will run to download a video from a playlist ($1 will be replaced with the url)
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
