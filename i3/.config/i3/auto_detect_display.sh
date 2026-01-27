
#!/bin/sh


if xrandr | grep "HDMI-1 connected"; then
  xrandr --output eDP1 --off --output HDMI-1 --auto --primary
elif xrandr | grep "DP-1 connected"; then
  xrandr --output eDP1 --off --output DP-1 --auto --primary
else
  xrandr --output eDP1 --auto --primary 
fi
  
