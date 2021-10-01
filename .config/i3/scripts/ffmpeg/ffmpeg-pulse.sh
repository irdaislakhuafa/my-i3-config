#!/bin/sh
directory="$(cat ~/.config/i3/scripts/ffmpeg/directory)"
reso="$(xrandr | grep '*' | awk '{print$1}')"
cd "$directory"
ffmpeg \
	-y -vsync 0 \
	-hwaccel cuda \
	-hwaccel_output_format cuda \
	-f x11grab \
	-video_size $reso \
	-framerate 30 \
	-i $DISPLAY \
	-f pulse \
	-ac 2 \
	-i default \
	-vf format=yuv420p \
	"Irda Islakhu Afa >> $(date '+%A %d %B %Y %R %S') (WIB).mkv"
