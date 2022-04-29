#!/bin/bash

xrandr --newmode 1920x1080_60.00 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
xrandr --addmode DP-1 1920x1080_60.00
#xrandr --addmode HDMI-1 1920x1080_60.00


xrandr --output DP-1 --mode 1920x1080_60.00 --right-of HDMI-1 --output HDMI-1 --primary --auto --output eDP-1 --auto --left-of HDMI-1
#xrandr --output HDMI-1 --primary --auto --output eDP-1 --auto --left-of HDMI-1
#xrandr --output DP-1 --mode 1920x1080_60.00 --primary --right-of eDP-1 --mode 1920x1080_60.00 --output eDP-1 --auto
