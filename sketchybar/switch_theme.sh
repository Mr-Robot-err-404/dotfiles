#!/bin/bash

THEME_NAME=$1
THEME_FILE="$HOME/.config/sketchybar/themes/$THEME_NAME"
CONFIG_FILE="$HOME/.config/sketchybar/sketchybarrc"

if [ ! -f "$THEME_FILE" ]; then
  echo "Usage: $0 <theme>"
  echo "Example: $0 kanagawa"
  exit 1
fi

source "$THEME_FILE"

sed -i '' "s/^BAR_COLOR=.*/BAR_COLOR=$BAR_COLOR/" "$CONFIG_FILE"
sed -i '' "s/^TEXT_COLOR=.*/TEXT_COLOR=$TEXT_COLOR/" "$CONFIG_FILE"
sed -i '' "s/^SPACE_BG=.*/SPACE_BG=$SPACE_BG/" "$CONFIG_FILE"

sketchybar --reload

echo "Switched to $THEME_NAME theme"
