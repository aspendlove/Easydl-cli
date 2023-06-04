#!/bin/bash
YoutubeVideo()
{
  if command -v 'yt-dlp' &> /dev/null
  then
    yt-dlp --no-playlist -f mp4 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dl' &> /dev/null
  then
    youtube-dl --no-playlist -f mp4 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlp is required, for more support please reference the readme'
    exit
  fi
}
YoutubeAudio()
{
  if command -v 'yt-dlp' &> /dev/null
  then
    yt-dlp --no-playlist -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dl' &> /dev/null
  then
    youtube-dl --no-playlist -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlp is required, for more support please reference the readme'
    exit
  fi
}
YoutubeAudioPlaylist()
{
  if command -v 'yt-dlp' &> /dev/null
  then
    yt-dlp -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dl' &> /dev/null
  then
    youtube-dl -x --audio-format $2 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlp is required, for more support please reference the readme'
    exit
  fi
}
YoutubeVideoPlaylist()
{
  if command -v 'yt-dlp' &> /dev/null
  then
    yt-dlp -f mp4 -o '%(title)s.%(ext)s' $1
  elif command -v 'youtube-dl' &> /dev/null
  then
    youtube-dl -f mp4 -o '%(title)s.%(ext)s' $1
  else
    echo 'youtube-dl or yt-dlp is required, for more support please reference the readme'
    exit
  fi
}
