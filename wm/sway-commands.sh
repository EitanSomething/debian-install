#!/usr/bin/env bash


# Dependencies
sudo apt install -y sway swaylock swayidle swaybg xwayland xdg-desktop-portal-wlr 

mkdir -p ~/.config/sway
sudo cp /etc/sway/config ~/.config/sway/
$EDITOR ~/.config/sway/config






