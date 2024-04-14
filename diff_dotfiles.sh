#!/bin/bash

diff_only_changed() {
  diff -qr "$1" "$HOME/$1" | grep -v '^Only in'
}

diff_only_changed ".config"
diff_only_changed ".bin"
diff_only_changed ".p10k.zsh"
diff_only_changed ".zshrc"
diff_only_changed ".vimrc"

