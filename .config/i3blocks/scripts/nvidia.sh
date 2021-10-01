#!/usr/bin/sh

util=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader | cut -d " " -f 1)

show(){
	echo '<span color='"$1"'>' $util%'</span>'
}

if [ $util -le 20 ]; then
	show "#ffffff"
elif [ $util -gt 20 -a $util -le 40]; then
	show "#0055ff"
elif [ $util -gt 40 -a $util -le 60]; then
	show "#00ff00"
elif [ $util -gt 60 -a $util -le 80]; then
	show "#ffff00"
elif [ $util -gt 80]; then
	show "#ff0000"
fi
