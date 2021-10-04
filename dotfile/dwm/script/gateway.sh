#!/bin/bash

RET=$(echo -e "power\nxmodmap\nbright" | dmenu -l 5 -p "gateway")

case $RET in
	power) ~/dwm/script/power.sh ;;
	xmodmap) ~/dwm/script/xmodmap.sh ;;
	bright) ~/dwm/script/bright.sh ;;
	*) ;;
esac


