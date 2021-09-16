#!/bin/bash

RET=$(echo -e "power\n" | dmenu -l 5 -p "gateway")

case $RET in
	power) ~/dwm/script/power.sh ;;
	*) ;;
esac


