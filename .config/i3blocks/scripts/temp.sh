#!/usr/bin/sh
temp="$(sensors | grep temp1 | grep crit | awk '{printf "%i", $2}')"

if [ $temp -le 40 ]; then
	echo '<span color="#0055ff">🌡️' $temp"°C</span>";
elif [ $temp -gt 40 -a $temp -le 60 ]; then
	echo '<span color="#00ff00">🌡️' $temp"°C</span>";
elif [ $temp -gt 60 -a $temp -le 75 ]; then
	echo '<span color="#ffff00">🌡️' $temp"°C</span>";
elif [ $temp -gt 75 ]; then
	echo '<span color="#ff0000">🌡️' $temp"°C</span>";
fi
