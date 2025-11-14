#!/bin/bash

DIR="$HOME/Screenshots"
mkdir -p "$DIR"

FILE="$DIR/$(date +%Y-%m-%d_%H-%M-%S).jpg"

case "$1" in
full)
  maim "$FILE"
  ;;

window)
  maim --window "$(xdotool getactivewindow)" "$FILE"
  ;;

select)
  maim --select "$FILE"
  ;;
esac

# Notify with preview
dunstify -i "$FILE" "Screenshot Saved" "$FILE"
