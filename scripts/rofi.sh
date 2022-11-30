#!/bin/sh

case "$*" in
	"proxy")
		nohup pkill clash >/dev/null 2>&1 &
		wait
		nohup clash >/dev/null 2>&1 &
		;;
	"unproxy")
		nohup pkill clash >/dev/null 2>&1 &
		;;
	"chrome")
		nohup google-chrome-stable -force-device-scale-factor=1.2 >/dev/null 2>&1 &
		;;
	"volume down")
		sh /home/yang/Arch/dwm/scripts/volume_down.sh >/dev/null 2>&1
		;;
	"volume up")
		sh /home/yang/Arch/dwm/scripts/volume_up.sh >/dev/null 2>&1
		;;
	"volume toggle")
		sh /home/yang/Arch/dwm/scripts/volume_mute_or_unmute.sh >/dev/null 2>&1
		;;
	"backlight down")
		sh /home/yang/Arch/dwm/scripts/backlight_down.sh >/dev/null 2>&1
		;;
	"backlight up")
		sh /home/yang/Arch/dwm/scripts/backlight_up.sh >/dev/null 2>&1
		;;
	"microphone toggle")
		sh /home/yang/Arch/dwm/scripts/microphone_cap_or_nocap.sh >/dev/null 2>&1
		;;
	"microphone down")
		sh /home/yang/Arch/dwm/scripts/microphone_down.sh >/dev/null 2>&1
		;;
	"microphone up")
		sh /home/yang/Arch/dwm/scripts/microphone_up.sh >/dev/null 2>&1
		;;
	*)
		echo "proxy"
		echo "chrome"
		echo "unproxy"
		echo "volume down"
		echo "volume up"
		echo "volume toggle"
		echo "backlight down"
		echo "backlight up"
		echo "microphone toggle"
		echo "microphone down"
		echo "microphone up"
esac
