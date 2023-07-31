#!/usr/bin/env bash


# Install packages after installing base Debian with no GUI

sudo apt install -y build-essential 

# Create folders in user directory

xdg-user-dirs-update


# Terminal
sudo apt install -y kitty

# Sound audio
sudo apt install -y pulseaudio alsa-utils pavucontrol volumicon-alsa pamixer

sudo apt install -y neofetch

bash /wm/eww-install.sh
bash /wm/sway-commands.sh

sudo apt install sddm
sudo systenctl sddm
