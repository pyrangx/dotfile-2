#!/bin/bash

RET=$(echo -e "hhkb\nlaptop" | dmenu -l 5 -p "xmodmap")

case $RET in
	laptop) setxkbmap -option ; xmodmap ~/.xmodmap-laptop ;;
	hhkb) setxkbmap -option ; xmodmap ~/.xmodmap-hhkb ;;
	*) ;;
esac
