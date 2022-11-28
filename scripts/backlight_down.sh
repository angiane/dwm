#!/bin/sh

# Dependencies: xorg-xbacklight
# sudo pacman -S xorg-xbacklight
backlight_down() {
	xbacklight -dec 1
}

backlight_down
