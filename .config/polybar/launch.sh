#!/bin/bash

# Terminate already running bar instances
# killall -q polybar

# If all your bars have ipc enabled, you can also use
polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
#polybar example 2>&1 | tee -a /tmp/polybar.log & disown

polybar main &
polybar second &

echo "Polybar launched..."
