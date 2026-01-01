#!/bin/bash

swww-daemon --format xrgb

WALLPAPER_FILE="$HOME/.config/hypr/current_wallpaper_swww"

if [ -f "$WALLPAPER_FILE" ]; then
    WALLPAPER_PATH=$(cat "$WALLPAPER_FILE")
    if [ -f "$WALLPAPER_PATH" ]; then
        swww img "$WALLPAPER_PATH" --transition-type outer --transition-duration 1 &

        wpg -s "$WALLPAPER_PATH"
    fi
fi
