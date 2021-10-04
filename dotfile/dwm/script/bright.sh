#!/bin/bash

RET=$(echo -e "90\n80\n70\n60\n50\n40\n30\n20\n10" | dmenu -l 0 -p "bright")

case $RET in
	90) brightnessctl set 90% ;;
	80) brightnessctl set 80% ;;
	70) brightnessctl set 70% ;;
	60) brightnessctl set 60% ;;
	50) brightnessctl set 50% ;;
	40) brightnessctl set 40% ;;
	30) brightnessctl set 30% ;;
	20) brightnessctl set 20% ;;
	10) brightnessctl set 10% ;;
esac


