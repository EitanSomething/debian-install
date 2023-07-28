#!/usr/bin/env bash

# Remove the EXTERNALLY_MANAGER file so pip works
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

# Dependencies
sudo apt install -y sway swaylock swayidle swatbg

# Eww Install

#Dependecies
sudo apt install -y rustc libgdk3.0-cil libgtk-3-0 gtk-layer-shell libpango-1.0-0 libgdk-pixbuf-2.0-0 libcairo2 libcairo-gobject2 libglib2.0-0 libglib2.0-dev libgcc-s1 glibc

#Rustup
curl https://sh.rustup.rs -sSf | sh


#Source
git clone https://github.com/elkowar/eww

cd eww

cargo build --release --no-default-features --features=wayland

cd target/release
chmod +x ./eww
./eww daemon

mkdir ~/.config/eww
cd ~/.config/eww
touch eww.yuck eww.scss


