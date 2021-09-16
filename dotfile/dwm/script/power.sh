#!/bin/bash

RET=$(echo -e "shutdown\nreboot\nlogout\nsleep" | dmenu -l 5 -p "Logout")

case $RET in
	shutdown) sudo poweroff ;;
	reboot) sudo reboot ;;
	logout) pkill dwm ;;
	sleep) systemctl hybrid-sleep ;;
	*) ;;
esac
