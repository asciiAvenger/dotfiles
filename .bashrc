#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias ll='ls -alhF'
alias mpv='devour mpv'
alias sxiv='devour sxiv'

# env
export EDITOR='vim'

# starship prompt
eval "$(starship init bash)"
