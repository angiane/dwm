#!/bin/sh

# Dependencies: alsa-utils
# sudo pacman -S alsa-utils
volume_down() {
	amixer set Master 1%-
}

volume_down
