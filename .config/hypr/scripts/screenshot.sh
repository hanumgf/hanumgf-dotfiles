#!/bin/bash

SAVE_DIR="$HOME/Pictures/screenshots"
mkdir -p "$SAVE_DIR"

FILE_NAME="screenshot-$(date +%Y%m%d%H%M%S).png"
FILE_PATH="$SAVE_DIR/$FILE_NAME"

case "$1" in
"full")
  grim "$FILE_PATH"
  notify-send "Screenshot" "全画面を保存しました" -i "$FILE_PATH"
  ;;
"select")
  # slurpの出力を変数に入れ、キャンセル（空）なら終了
  REGION=$(slurp)
  [ -z "$REGION" ] && exit
  grim -g "$REGION" "$FILE_PATH"
  notify-send "Screenshot" "選択範囲を保存しました" -i "$FILE_PATH"
  ;;
"copy")
  REGION=$(slurp)
  [ -z "$REGION" ] && exit
  grim -g "$REGION" - | wl-copy
  notify-send "Screenshot" "クリップボードにコピーしました" -i input-tablet
  ;;
*)
  echo "Usage: $0 {full|select|copy}"
  ;;
esac
