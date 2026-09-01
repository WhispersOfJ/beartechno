#!/usr/bin/env bash
set -euo pipefail

SRC="$(cd -- "$(dirname -- "$0")" && pwd)"
DEST_I3="${XDG_CONFIG_HOME:-$HOME/.config}/i3"
DEST_PB="${XDG_CONFIG_HOME:-$HOME/.config}/polybar"
DEST_RF="${XDG_CONFIG_HOME:-$HOME/.config}/rofi"
DEST_PM="${XDG_CONFIG_HOME:-$HOME/.config}/picom"
DEST_DN="${XDG_CONFIG_HOME:-$HOME/.config}/dunst"
DEST_AL="${XDG_CONFIG_HOME:-$HOME/.config}/alacritty"
XR="${HOME}/.Xresources"

mkdir -p "$DEST_I3" "$DEST_PB" "$DEST_RF" "$DEST_PM" "$DEST_DN" "$DEST_AL"

cp -f "$SRC/i3/config"          "$DEST_I3/config"
cp -f "$SRC/polybar/config.ini" "$DEST_PB/config.ini"
cp -f "$SRC/rofi/technoscape.rasi" "$DEST_RF/technoscape.rasi"
cp -f "$SRC/picom/picom.conf"   "$DEST_PM/picom.conf"
cp -f "$SRC/dunst/dunstrc"      "$DEST_DN/dunstrc"
cp -f "$SRC/alacritty/alacritty.toml" "$DEST_AL/alacritty.toml"
cp -f "$SRC/Xresources"         "$XR"
echo "Configs deployate in ${DEST_I3%/*}"
