#!/bin/sh

# Dependencies: alsa-utils
# sudo pacman -S alsa-utils
microphone_down() {
	amixer set Capture 1%-
}

microphone_down
