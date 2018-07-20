#!/bin/bash

light="$(cat /sys/class/backlight/intel_backlight/brightness)" 
#echo $light
inc_light=$(($light+50))
cat> /sys/class/backlight/intel_backlight/brightness <<EOF
$inc_light 
EOF
echo $inc_light
cat /sys/class/backlight/intel_backlight/brightness
