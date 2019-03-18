#!/bin/bash
youtubeVIDEO()
{
#this is the command that will run to download a video ($1 will be replaced with the url)
youtube-dl -f mp4 -o '%(title)s.%(ext)s' $1
}
youtubeAUDIO()
{
#this is the command that will run to download audio ($1 will be replaced with the url)
youtube-dl -x --audio-format mp3 -o '%(title)s.%(ext)s' $1
}
