#!/bin/sh

paplay --volume=25536 $(find "$HOME/.config/dunst/alerts" -type f -name "*.mp3" | shuf -n 1)
