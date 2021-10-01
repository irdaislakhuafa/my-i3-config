#!/usr/bin/sh

hour=$(date +%H)
minute=$(date +%M)
now="$hour:$minute"
zone="$(date | awk '{printf$6}')"

echo "$now $zone"

if [ $hour -lt 06 ]; then
	mpv ~/.config/i3blocks/resources/waktunya-tidur.m4 > ~/.cache/turu 2> ~/.cache/turu &!
fi

