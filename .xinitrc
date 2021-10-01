#!/usr/bin/sh

stat=$(cat /sys/class/power_supply/BAT0/status)
mode=$(cat ~/.config/i3/mode)

#if [ "$stat" == "Discharging" ]; then
	if [ $mode -le 0 ]; then 
		exec i3 
	else
		exec prime-run i3 
	fi
#else
#	exec prime-run i3
#fi


