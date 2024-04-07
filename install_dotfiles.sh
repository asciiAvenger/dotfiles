#!/bin/sh

# Install dependencies
DEPS=$(cat dependencies.txt)
yay -S $DEPS

# Download wallpaper collection by Derek Taylor
# https://gitlab.com/dwt1/wallpapers
git clone --depth=1 https://gitlab.com/dwt1/wallpapers.git ~/.local/share/wallpapers

# Convert one file to PNG, since hyprlock currently only supports PNGs
magick ~/.local/share/wallpapers/0007.jpg ~/.local/share/wallpapers/0007.png

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions, zsh-syntax-highlighting, zsh-completions and powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Copy the dotfiles
cp -r .bin ~/
cp -r .config/* ~/.config/
cp ./{.p10k.zsh,.zshrc,.vimrc} ~/
