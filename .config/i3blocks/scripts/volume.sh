#!/usr/bin/sh
percent=$(amixer | grep Right | grep Playback | grep % | cut -d '[' -f 2 | cut -d ']' -f -1 | awk '{printf "%i", $1}')
stat=$(amixer | grep Right | grep Playback | grep % | awk '{printf "%s", $6}')

if [ $percent -le 40 ]; then
    echo '<span color="#0055ff">🎧' $percent"%" $stat'</span>';
elif [ $percent -gt 40 -a $percent -le 60 ]; then
    echo '<span color="#00ff00">🎧' $percent"%" $stat'</span>';
elif [ $percent -gt 60 -a $percent -le 80 ]; then
    echo '<span color="#ffff00">🎧' $percent"%" $stat'</span>';
elif [ $percent -gt 80 ]; then
    echo '<span color="#ff0000">🎧' $percent"%" $stat'</span>';
else 
    echo '<span color="#ffffff">🎧 [off]</span>';
fi