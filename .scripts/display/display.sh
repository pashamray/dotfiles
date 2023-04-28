#!/bin/bash

#xrandr --newmode "3840x2160_135"  1705.75  3840 4200 4624 5408  2160 2163 2168 2337 -hsync +vsync
#xrandr --addmode HDMI-1-0 3840x2160_135

xrandr --output eDP-1-0 --primary --auto --output DP-2 --auto --right-of eDP-1-0 --output HDMI-0 --auto --right-of DP-2
#xrandr --output DP-2 --primary --auto --output eDP-1-0 --auto --left-of HDMI-0 --output HDMI-0 --auto --left-of DP-2
#xrandr --output eDP --primary --auto --output DP-1-0 --off --output HDMI-1-0 --off
#xrandr --output HDMI-1-0 --primary --auto --output DP-1-0 --auto --left-of HDMI-1-0 --output eDP --auto --left-of DP-1-0
#xrandr --output eDP --auto --primary --output HDMI-1-0 --scale 1.25x1.25 --right-of eDP

