#!/bin/sh
BRIGHTNESS=`cat /sys/class/leds/asus\:\:kbd_backlight/brightness`
BRIGHTNESS=`expr $BRIGHTNESS + 1`
if [ $BRIGHTNESS -gt 3 ]; then
   echo 3 > /sys/class/leds/asus\:\:kbd_backlight/brightness
else
   echo $BRIGHTNESS > /sys/class/leds/asus\:\:kbd_backlight/brightness
fi

#echo 0 > /sys/class/leds/asus\:\:kbd_backlight/brightness
