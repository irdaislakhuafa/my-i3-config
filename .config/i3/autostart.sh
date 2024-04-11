#!/bin/sh

# To set Wallpaper
feh --bg-scale /media/My_Drive/My_Config/wallpaper/wallpaper.* &!

# random wallpaper
#feh --randomize --bg-fill <yourpath>/*


# To set Gamma
#xgamma -rgamma 0.40 -ggamma 0.50 -bgamma 0.80 &!

# set display more colorful
#xrandr --output eDP-1 --brightness 1.2

# set brightness to 10%
#brightnessctl -d 'intel_backlight' set 10%

# softblock all
#rfkill block all

# start pulseaudio
pulseaudio --start &!

# set screen timeout /second
xset s 900 &!

# set energy start on
xset +dpms &!
