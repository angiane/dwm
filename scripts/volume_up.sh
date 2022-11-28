#!/bash/sh

# Dependencies: alsa-utils
# sudo pacman -S alsa-utils
volume_up() {
	amixer set Master 1%+
}

volume_up
