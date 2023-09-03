#!/usr/bin/env bash

# PACKAGE INCLUDES build-essential.

sudo apt install -y build-essential

# Dependencies
sudo apt install -y sway swaylock swayidle swaybg

mkdir -p ~/.config/sway
sudo cp /etc/sway/config ~/.config/sway/
$EDITOR ~/.config/sway/config






