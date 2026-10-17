export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='nvim +Man!'

typeset -U path   # deduplicate PATH entries
path=(
  $HOME/.local/bin
  $HOME/.bin
  $HOME/go/bin
  $path
)
export PATH
