#!/bin/bash
#most of this is copied from https://github.com/FD-/RPiPlay

#requirements:
#using $sudo raspi-config enable SSH, VNC, and extend the 
#disk needs to be extended to take all available space

#update pi os to newest version
echo Installing updates 
sudo apt update -y && sudo apt full-upgrade -y #this stepp can take time
echo Done Installing updates!

#Downloadeing RPiPlay
echo gettings repo RPiPlay from github 
sudo git clone https://github.com/FD-/RPiPlay.git
cd RPiPlay

#Build RPiPlay
echo building RPiPlay

sudo apt-get install cmake -y
sudo apt-get install libavahi-compat-libdnssd-dev -y
sudo apt-get install libplist-dev -y
sudo apt-get install libssl-dev -y
mkdir build
cd build
cmake ..
make -j

echo Done with building

echo instaling RPiPlay
sudo make install

echo check https://github.com/FD-/RPiPlay#usage for more settings informations