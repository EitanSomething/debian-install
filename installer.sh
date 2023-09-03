#!/usr/bin/env bash


# Install packages after installing base Debian with no GUI

sudo apt install -y build-essential curl

# Create folders in user directory

xdg-user-dirs-update

sudo apt install -y lxappearance

# Terminal
sudo apt install -y kitty

# Sound audio
sudo apt install -y wireplumber alsa-utils pavucontrol volumeicon-alsa pamixer

sudo systemctl --user --now enable wireplumber.service
sudo apt install -y neofetch

bash wm/eww-install.sh
bash wm/sway-commands.sh

sudo apt install -y libpam0g-dev libxcb-xkb-dev

git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make 

sudo make install install systemd
cd ..
sudo systemctl enable ly.service
sudo systemctl restart ly

