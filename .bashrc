#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias l='ls --color=auto -lhF'
alias ll='ls --color=auto -alhF'
alias zathura='devour zathura'
alias notepadqq='devour notepadqq'
alias mpv='devour mpv'
alias sxiv='devour sxiv'

# env
export EDITOR='vim'

# starship prompt
eval "$(starship init bash)"
