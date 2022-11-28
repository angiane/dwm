#!/bin/sh

# Dependencies: xorg-xbacklight
# sudo pacman -S xorg-xbacklight
backlight_up() {
	xbacklight -inc 1
}

backlight_up
