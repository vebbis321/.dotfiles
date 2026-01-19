#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do
  sleep 1
done

# Detect battery name
if [ -d /sys/class/power_supply/BAT1 ]; then
  export POLYBAR_BATTERY=BAT1
else
  export POLYBAR_BATTERY=BAT0
fi

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload myBar &
done
