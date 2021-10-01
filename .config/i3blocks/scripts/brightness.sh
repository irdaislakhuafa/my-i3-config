#!/usr/bin/sh

stat=$(expr $(cat /sys/class/backlight/intel_backlight/brightness) / $(expr $(cat /sys/class/backlight/intel_backlight/max_brightness) / 100))

if [ $stat -le 20 ]; then
	echo '<span color="#ffffff">' $stat"%"'</span>';
elif [ $stat -gt 20 -a $stat -le 40 ]; then
	echo '<span color="#0055ff">' $stat"%"'</span>';
elif [ $stat -gt 40 -a $stat -le 60 ]; then
	echo '<span color="#00ff00">' $stat"%"'</span>';
elif [ $stat -gt 60 -a $stat -le 80 ]; then
	echo '<span color="#ffff00">' $stat"%"'</span>';
elif [ $stat -gt 80 ]; then
	echo '<span color="#ff0000">' $stat"%"'</span>';
fi
