#!/bin/bash

#xrandr --newmode 1920x1080_60.00 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
#xrandr --addmode DP-1 1920x1080_60.00
#xrandr --addmode HDMI-1-0 1920x1080_60.00


#xrandr --output DP-1 --mode 1920x1080_60.00 --right-of HDMI-1 --output HDMI-1 --primary --auto --output eDP-1 --auto --left-of HDMI-1
#xrandr --output eDP --auto
#xrandr --verbose --output HDMI-1-0 --auto

#xrandr --verbose --output HDMI-1-0 --mode 2560x1440 --output eDP --auto --left-of HDMI-1-0
#xrandr --verbose --output HDMI-1-0 --auto --primary --output eDP --auto --left-of HDMI-1-0
#xrandr --verbose --output eDP --auto --primary --output HDMI-1-0 --auto --right-of eDP
xrandr --verbose --output eDP --auto --primary --output HDMI-1-0 --mode 1920x1080 --right-of eDP

