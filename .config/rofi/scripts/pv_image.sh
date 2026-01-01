#!/bin/bash

DIR_TO_SHOW="$HOME/.config/hypr/wallpaper/"

#: EntryName\0icon\x1fthumbnail://path/to/file\n
ls "$DIR_TO_SHOW"/* | while read imageFile; do
    echo -en "$(basename "$imageFile")\0icon\x1fthumbnail://$imageFile\n"
done | rofi -dmenu -i -show-icons -config ~/.config/rofi/config.rasi
