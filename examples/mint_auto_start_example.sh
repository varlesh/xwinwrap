#!/bin/bash
# starting this script on login will wait for Nemo to initialize
# and start xwinwrap with mplayer on desktop surface and play /path/to/your/video

until $(echo xwininfo -name Desktop)|grep "IsViewable"; do :; done
nice xwinwrap -b -s -fs -st -sp -nf -ov -fdt -d "Desktop" -- mplayer -wid WID -panscan=1.0 -nosound -framedrop /path/to/your/video
