#!/bin/bash

SAVE_DIR="$HOME/Pictures/screenshots/"
mkdir -p "$SAVE_DIR"

FILE_NAME="screenshots-$(date +%Y%m%d%H%M%S).png"
FILE_PATH="$SAVE_DIR/$FILE_NAME"

MODE="$1"

if [[ "$MODE" == "full" ]]; then
    grim "$FILE_PATH"
elif [[ "$MODE" == "select" ]]; then
    grim -g "$(slurp)" "$FILE_PATH"
elif [[ "$MODE" == "copy" ]]; then
    grim -g "$(slurp)" - | wl-copy
fi

if [[ "$MODE" != "copy" ]]; then
    notify-send "Screenshot" "✔ $FILE_NAME を保存しました" -i "$FILE_PATH"
else
    notify-send "Screenshot" "✔ 選択範囲をクリップボードにコピーしました"
fi
