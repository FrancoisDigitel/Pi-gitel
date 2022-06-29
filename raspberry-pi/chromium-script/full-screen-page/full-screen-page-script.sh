#!/bin/bash

#before starting this script be sure to have vnc and ssh enabled for future managent.
#Preferences > raspberry pi configuration > interface >(enable ssh and vnc)

#wifi can also be used for this

#update pi to newest version

sudo apt update -y && sudo apt full-upgrade -y

#create autostart directory and file
sudo mkdir -p .config/lxsession/LXDE-pi
sudo nano .config/lxsession/LXDE-pi/autostart

#add start parameter
echo "
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
#@xscreensaver -no-splash
point-rpi
@chromium-browser --start-fullscreen --start-maximized https://Google.com/

" >> .config/lxsession/LXDE-pi/autostart 

#change hdmi output 1 to left 
#the oriantation needs to be set manualy in the interface using vnc or mous and keyboard

DISPLAY=:0 xrandr --output HDMI-1 --rotate left #this command will only set the display to the left for this session until reboot