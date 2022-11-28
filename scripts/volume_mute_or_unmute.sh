#!/bin/sh

# Dependencies: alsa-utils
# sudo pacman -S alsa-utils
volume_mute_or_unmute() {
	case $(amixer get Master | tail -n1 | awk -F '[][]' '{print $6}') in
		off)
			amixer set Master unmute
			;;
		*)
			amixer set Master mute
	esac
}
volume_mute_or_unmute
