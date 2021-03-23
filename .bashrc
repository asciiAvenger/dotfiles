#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# more aliases
alias ll='ls -alhF'

# env
export EDITOR='vim'

# starship prompt
eval "$(starship init bash)"
