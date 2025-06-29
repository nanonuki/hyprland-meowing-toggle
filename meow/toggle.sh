#!/bin/bash
# ~/.config/hypr/scripts/meow/toggle.sh

# PATHS
CONFIG_FILE="$HOME/.config/hypr/hyprland.conf"
TEMP_FILE="/tmp/hyprland_temp.conf"
TOGGLE_FILE="/tmp/hypr_keybind_toggle"

# check if toggle file exists
if [ -f "$TOGGLE_FILE" ]; then
    # disable target keybind
    sed '/bind = , space, exec, ~\/.config\/hypr\/scripts\/meow\/randomizer.sh/d' "$CONFIG_FILE" > "$TEMP_FILE"
    mv "$TEMP_FILE" "$CONFIG_FILE"
    rm "$TOGGLE_FILE"
    notify-send "Keybind" "MEOW - Disabled"
else
    # enable the target keybind
    echo "bind = , space, exec, ~/.config/hypr/scripts/meow/randomizer.sh" >> "$CONFIG_FILE"
    touch "$TOGGLE_FILE"
    notify-send "Keybind" "WOOF - Enabled"
fi
hyprctl reload
