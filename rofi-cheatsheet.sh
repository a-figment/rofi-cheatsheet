#!/usr/bin/env bash

# TODO: Add optional sheets for different topics
source "$(dirname "$0")/bash-sheet.sh"

# Create the MENU
MENU=""
for i in "${!ITEMS[@]}"; do
    MENU+="<b>${ITEMS[$i]}</b>\n${DESCRIPTIONS[$i]}\x0f"
done

# Multi-line entries: https://github.com/davatorium/rofi/issues/983
SELECTION=$(printf "%b" "${MENU}" | rofi -dmenu -i -markup-rows -sep \
				    $'\x0f' -eh 2 -p "Select item:" \
				    -kb-row-up k \
				    -kb-row-down j \
				    -theme gruvbox-dark-soft)

# Want item only, remove markup
ITEM=$(echo "$SELECTION" | head -n 1)
if [ -z "$ITEM" ]; then
    exit 0
fi

ITEM=${ITEM::-4}
ITEM=${ITEM:3}

# Copy 
if [ -n "$ITEM" ]; then
    echo -n "$ITEM" | xclip -selection clipboard
    notify-send "Copied to clipboard" "$ITEM"
fi


