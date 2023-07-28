#!/usr/bin/env bash

# PACKAGE INCLUDES build-essential.

sudo apt install -y build-essential


# Remove the EXTERNALLY_MANAGER file so pip works
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

# Dependencies
sudo apt install -y sway swaylock swayidle swaybg

mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/
$EDITOR ~/.config/sway/config






