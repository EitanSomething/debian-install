
sudo apt install -y meson wget build-essential ninja-build cmake-extras cmake 

sudo apt install -y gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libvulkan-dev libvulkan-volk-dev  vulkan-validationlayers-dev libvkfft-dev libgulkan-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev xdg-desktop-portal-wlr

sud0 apt install -y mako pipewire wireplumber qtwayland5 qt6-wayland polkit-kde-agent-1

sudo apt install -y kitty

mkdir HyprSource
cd HyprSource

## We get Source
wget https://github.com/hyprwm/Hyprland/releases/download/v0.24.1/source-v0.24.1.tar.gz
tar -xvf source-v0.24.1.tar.gz

wget https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.31/downloads/wayland-protocols-1.31.tar.xz
tar -xvJf wayland-protocols-1.31.tar.xz

wget https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.22.0/downloads/wayland-1.22.0.tar.xz
tar -xzvJf wayland-1.22.0.tar.xz

wget https://gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.1.1/downloads/libdisplay-info-0.1.1.tar.xz
tar -xvJf libdisplay-info-0.1.1.tar.xz

cd wayland-1.22.0
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -Ddocumentation=false &&
ninja
sudo ninja install

cd ../..

cd wayland-protocols-1.31

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja

sudo ninja install

cd ../..

cd libdisplay-info-0.1.1/

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja

sudo ninja install

cd ../..

chmod a+rw hyprland-source

cd hyprland-source/

sed -i 's/\/usr\/local/\/usr/g' config.mk

sudo make install


