#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
echo "---" | tee -a /tmp/polybar-middle.log /tmp/polybar-right.log
polybar middle 2>&1 | tee -a /tmp/polybar-middle.log & disown
polybar right 2>&1 | tee -a /tmp/polybar-right.log & disown

echo "Bars launched..."
