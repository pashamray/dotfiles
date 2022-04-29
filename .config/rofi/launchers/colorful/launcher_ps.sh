#!/usr/bin/env bash

theme="style_ps"
dir="$HOME/.config/rofi/launchers/colorful"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
