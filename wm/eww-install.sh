# Eww Install

#Dependecies
sudo apt install -y rustc libgdk3.0-cil libgtk-3-0 libgtk-3-dev libgtk-layer-shell-dev libgtk-layer-shell0 libatk1.0-0 libpango-1.0-0 libgdk-pixbuf-2.0-0 libcairo2 libcairo-gobject2 libglib2.0-0 libglib2.0-dev libgcc-s1 libc6

#Rustup
curl https://sh.rustup.rs -sSf | sh

rustup toolchain install nightly

#Source
git clone https://github.com/elkowar/eww

cd eww

rustup run nightly

cargo build --out-dir /usr/local/bin/eww --release --no-default-features --features=wayland

cd /usr/local/bin/eww/target/release
chmod +x ./eww
./eww daemon

mkdir ~/.config/eww
