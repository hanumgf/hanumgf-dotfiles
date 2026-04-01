#!/bin/bash

awww-daemon --format xrgb

WALLPAPER_FILE="$HOME/.config/hypr/current_wallpaper_awww"

if [ -f "$WALLPAPER_FILE" ]; then
  WALLPAPER_PATH=$(cat "$WALLPAPER_FILE")
  if [ -f "$WALLPAPER_PATH" ]; then
    awww img "$WALLPAPER_PATH" --transition-type outer --transition-duration 1 &

    wpg -s "$WALLPAPER_PATH"
  fi
fi
