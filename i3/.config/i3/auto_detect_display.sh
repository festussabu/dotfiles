#!/bin/sh

internal=eDP-1

# first connected external output (HDMI-1, DP-1, DP-2, ... whatever it shows up as)
external=$(xrandr | awk -v skip="$internal" '$2 == "connected" && $1 != skip {print $1; exit}')

if [ -n "$external" ]; then
  xrandr --output "$external" --auto --primary --output "$internal" --off
else
  xrandr --output "$internal" --auto --primary
fi

# turn off anything that was unplugged but still has an active mode
xrandr | awk '$2 == "disconnected" && $3 ~ /^[0-9]+x[0-9]+\+/ {print $1}' | while read -r out; do
  xrandr --output "$out" --off
done
