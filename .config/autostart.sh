#!/bin/sh

nm-applet &
setxkbmap es &
feh --bg-scale --randomiz $HOME/Pictures/Wallpapers/* &
udiskie &
cbatticon &

# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
