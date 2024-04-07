#!/bin/bash
WALLPAPER=$(ls ~/.local/share/wallpapers/*.jpg | shuf -n 1)

killall hyprpaper

cat <<EOF > ~/.config/hypr/hyprpaper.conf
preload = $WALLPAPER
wallpaper = ,$WALLPAPER
splash = false
EOF

hyprpaper &
disown
