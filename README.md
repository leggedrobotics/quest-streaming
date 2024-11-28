# Quest Streaming
Tools for streaming the Meta Quest headsets to linux, both wired and wirelessly.

For more information on scrcpy, visit the [scrcpy GitHub page](https://github.com/Genymobile/scrcpy).

For more information on ADB, visit the [ADB page](https://developer.android.com/tools/adb).

## Setup
Run the `./install.sh` script to install scrcpy and adb. This script will also install the udev rules for adb and the quest helper scripts.

## Usage
### Activating Wireless Mode
To wirelessly stream your Quest, you must first connect it to your computer via USB and run the `quest-wifi` script. This will enable wireless mode and allow you to disconnect the headset from your computer. *NOTE: this may need to be run twice to work properly.*

### Streaming
Whether the headset is in wireless or wired mode, running the `quest-view` script will start the scrcpy server and connect to the headset displaying the right eye view on the screen. *NOTE: This is set to crop and display for the Quest 3 at the moment.*