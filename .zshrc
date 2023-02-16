# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/philipp/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#############
# MY CONFIG #
#############

# completion
source <(kubectl completion zsh)
source <(helm completion zsh)

# aliases
alias ls='ls --color=auto'
alias l='ls --color=auto -lhF'
alias ll='ls --color=auto -alhF'
alias ranger='source ranger'

# env
export EDITOR='vim'
export PATH=$PATH:$HOME/go/bin

# starship prompt
eval "$(starship init zsh)"
