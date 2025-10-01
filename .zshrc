# Settings from compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*'
zstyle :compinstall filename '/home/philipp/.zshrc'

autoload -Uz compinit
compinit

# History (stolen from https://github.com/dreamsofautonomy/zensh)
HISTSIZE=50000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Other options
setopt autocd
setopt extendedglob
setopt nomatch
setopt notify
unsetopt beep

# force emacs bindings or else tmux will change it
bindkey -e

# bind delete key to actually delete
bindkey  "^[[3~"  delete-char

# Aliases
alias ranger='source ranger'
alias pacss='pacman -Ss'
alias yayss='yay -Ss'
alias ls='eza --color=auto --group-directories-first --icons'
alias ll='eza --color=auto --group-directories-first --icons -l'
alias la='eza --color=auto --group-directories-first --icons -la'
alias lt='eza --color=auto --group-directories-first --icons -aT'
alias grep='grep --color=auto'

alias ls='ls --color=auto'

# Git aliases
alias ga='git add'
alias gaa='git add --all'
alias gd='git diff'
alias gp='git push'
alias gl='git pull'
alias glo='git log --online --graph --decorate'
alias gm='git merge'
alias gss='git status --short'
alias gc='git commit --verbose'
alias gf='git fetch --all'
alias gfp='git fetch --all --prune'
alias gsw='git switch'

# Kubectl aliases
alias k='kubectl'
alias kg='kubectl get'
alias kga='kubectl get --all-namespaces'
alias kdel='kubectl delete'
alias krun='kubectl run'

# Env
export EDITOR='nvim'
export MANPAGER='nvim +Man!' # use neovim for as pager for man pages
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/.local/bin
export SSH_ASKPASS=/usr/bin/ksshaskpass
export SSH_ASKPASS_REQUIRE=prefer

# fzf integration
source <(fzf --zsh)

# Autosuggestions (installed via arch package extra/zsh-autosuggestions)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship prompt
eval "$(starship init zsh)"

# Syntax highlighting (installed via arch package extra/zsh-syntax-highlighting)
# Must be sourced last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
