#!/bin/sh

# Dependencies: alsa-utils
# sudo pacman -S alsa-utils
microphone_cap_or_nocap() {
	case $(amixer get Capture | tail -n1 | awk -F '[][]' '{print $6}') in
		off)
			amixer set Capture cap
			;;
		*)
			amixer set Capture nocap
	esac
}
microphone_cap_or_nocap
