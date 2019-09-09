#!/bin/sh
xrandr --output HDMI-1 --auto --mode 3840x2160 && xrandr --output eDP-1 --off
xrandr --dpi 160
xrandr --output HDMI-1 --set "Broadcast RGB" "Full"
./.fehbg
