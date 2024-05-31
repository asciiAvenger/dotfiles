#!/bin/sh

# Install dependencies
DEPS=$(cat dependencies.txt)
yay -S $DEPS

# Download wallpaper collection by Derek Taylor
# https://gitlab.com/dwt1/wallpapers
git clone --depth=1 https://gitlab.com/dwt1/wallpapers.git ~/.local/share/wallpapers

# Convert one file to PNG, since hyprlock currently only supports PNGs
magick ~/.local/share/wallpapers/0007.jpg ~/.local/share/wallpapers/0007.png

# Convert the breeze cursor theme into a hyprcursor theme
# mkdir ~/.local/share/icons
# hyprcursor-util -x /usr/share/icons/breeze_cursors -o ~/.local/share/icons/
# sed -i 's/^name.*$/name = breeze_cursors/' ~/.local/share/icons/extracted_breeze_cursors/manifest.hl
# hyprcursor-util -c ~/.local/share/icons/extracted_breeze_cursors -o ~/.local/share/icons/
# rm -r ~/.local/share/icons/extracted_breeze_cursors

# Download ohmyzsh to use source some of the plugins from the .zshrc
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.local/share/ohmyzsh

# Use stow to symlink the dotfiles
stow -t ~ .
