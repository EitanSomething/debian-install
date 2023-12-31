# Eww Install

#Dependecies
sudo apt install -y libgdk3.0-cil libgtk-3-0 libgtk-3-dev libgtk-layer-shell-dev libgtk-layer-shell0 libatk1.0-0 libpango-1.0-0 libgdk-pixbuf-2.0-0 libcairo2 libcairo-gobject2 libglib2.0-0 libglib2.0-dev libgcc-s1 libc6

#Rustup
curl https://sh.rustup.rs -sSf | sh

export PATH="/$HOME/.cargo/env:$PATH"

rustup toolchain install nightly

#Source
git clone https://github.com/elkowar/eww

cd eww

rustup default nightly
rustup update

cargo build --release --no-default-features --features=wayland

rustup default stable
rustup update

cd eww/target/release
chmod +x ./eww
sudo mkdir /usr/local/bin/eww/
sudo cp . /usr/local/bin/eww/
export PATH="/usr/local/eww:$PATH"

eww daemon
