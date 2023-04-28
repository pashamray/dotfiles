#!/bin/bash

#xrandr --newmode "3840x2160_135"  1705.75  3840 4200 4624 5408  2160 2163 2168 2337 -hsync +vsync
#xrandr --addmode HDMI-1-0 3840x2160_135

xrandr --output eDP --primary --auto --output HDMI-1-0 --auto --right-of eDP
#xrandr --output eDP --auto --primary --output HDMI-1-0 --scale 1.25x1.25 --right-of eDP

