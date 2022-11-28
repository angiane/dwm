#!/bin/sh

# Dependencies: alsa-utils
# sudo pacman -S alsa-utils
microphone_up() {
	amixer set Capture 1%+
}

microphone_up
