#!/usr/bin/sh

available=$(free -m | grep Mem | awk '{ printf "%i", $7 }')
used=$(free -m | grep Mem | awk '{ printf "%i", $3 }')
total=$(free -m | grep Mem | awk '{ printf "%i", $2 }')
humanRead=$(free -h | grep Mem | awk '{ printf "%sB / %sB", $3, $7 }')
percent=$(expr $used / $(expr $total / 100))

show(){
	echo '<span color='"$1"'>'  $humanRead'</span>'
}


if [ $percent -le 20 ]; then 
	show "#ffffff"
elif [ $percent -gt 20 -a $percent -le 40 ]; then
	show "#0055ff"
elif [ $percent -gt 40 -a $percent -le 60 ]; then
	show "#00ff00"
elif [ $percent -gt 60 -a $percent -le 80 ]; then
	show "#ffff00"
elif [ $percent -gt 80 ]; then
	show "#ff0000"
fi
