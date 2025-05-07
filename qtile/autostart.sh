#!/bin/sh
xrandr --output HDMI-0 --auto
xrandr --output DP-0 --auto --right-of HDMI-0
xrandr --output DP-1 --auto --right-of DP-0
xrandr --output DP-2 --auto --right-of DP-1

