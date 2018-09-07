#!/bin/bash
echo "using apt to try to install youtube-dl (dependency, if it is already installed you don't need to worry)"
sudo apt install youtube-dl
sudo cp youtube /usr/local/bin
echo "fully installed"
exit

