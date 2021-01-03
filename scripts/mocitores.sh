#!/bin/bash

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
    xrandr --output eDP1 --primary --mode 1366x768 --rotate normal --output DP2 --mode 1600x900 --rotate normal --left-of eDP1

fi
