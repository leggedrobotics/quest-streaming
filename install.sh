#/usr/bin/bash

# Install the required packages
sudo apt install ffmpeg libsdl2-2.0-0 adb wget \
                 gcc git pkg-config meson ninja-build libsdl2-dev \
                 libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
                 libswresample-dev libusb-1.0-0 libusb-1.0-0-dev

# Clone and install the latest release of scrcpy 
# Clone and install the latest release of scrcpy 
if [ ! -d "scrcpy" ]; then
    git clone https://github.com/Genymobile/scrcpy
fi
cd scrcpy
./install_release.sh

# Remove the cloned repository
cd ..
rm -rf scrcpy

# Test the installation
if [ -x "$(command -v scrcpy)" ]; then
    echo "Installation successful"
else
    echo "Installation failed"
    exit 1
fi

# Install the helper scripts
chmod +x quest-wifi
chmod +x quest-view

sudo cp quest-wifi /usr/local/bin
sudo cp quest-view /usr/local/bin

# Test the helper scripts
if [ -x "$(command -v quest-wifi)" ] && [ -x "$(command -v quest-view)" ]; then
    echo "Helper scripts installed successfully"
else
    echo "Helper scripts installation failed"
    exit 1
fi

echo "Installation complete, you can now run `quest-wifi` to connect to your Quest to wireless adb, and `quest-view` to view the Quest screen on your computer"