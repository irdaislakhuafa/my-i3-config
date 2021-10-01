#!/usr/bin/sh

interface="$(iwctl device list | grep station | awk '{print$1}' )"
ssid="$(iw dev $interface link | grep SSID | cut -d ' ' -f 2-)"
echo '<span color=">$ssid';

