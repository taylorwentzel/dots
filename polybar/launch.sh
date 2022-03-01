#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch top and bottom
echo "---" | tee -a /tmp/main.log
polybar main 2>&1 | tee -a /tmp/main.log & disown

echo "Bars launched..."
