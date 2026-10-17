ZSH_CACHE=${XDG_CACHE_HOME:-$HOME/.cache}/zsh
[[ -d $ZSH_CACHE ]] || mkdir -p "$ZSH_CACHE"

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZSH_CACHE/zcompcache"

autoload -Uz compinit
# Full security check only once a day; otherwise use the cached dump.
if [[ -n $ZSH_CACHE/zcompdump(#qN.mh+24) || ! -e $ZSH_CACHE/zcompdump ]]; then
  compinit -d "$ZSH_CACHE/zcompdump"
else
  compinit -C -d "$ZSH_CACHE/zcompdump"
fi

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history       # save timestamps + duration
setopt share_history
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify            # show !! expansion before running it

# Other options
setopt autocd
setopt extendedglob
setopt nomatch
setopt notify
unsetopt beep

# force emacs bindings
bindkey -e

# terminfo-based instead of hardcoded escape codes
bindkey "${terminfo[kdch1]}" delete-char
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}"  end-of-line
bindkey '^[[1;5C' forward-word    # Ctrl-Right
bindkey '^[[1;5D' backward-word   # Ctrl-Left

# edit the current command in nvim with Ctrl-X Ctrl-E
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# make Ctrl-W stop at / so it deletes one path segment at a time
WORDCHARS=${WORDCHARS//\/}

# Aliases
alias ranger='source ranger'
alias pacss='pacman -Ss'
alias yayss='yay -Ss'
alias ls='eza --color=auto --group-directories-first --icons=auto'
alias ll='eza --color=auto --group-directories-first --icons=auto -l --git'
alias la='eza --color=auto --group-directories-first --icons=auto -la --git'
alias lt='eza --color=auto --group-directories-first --icons=auto -aT --git-ignore --level=3'
alias grep='grep --color=auto'
alias cat='bat --paging=never'
alias task='go-task'

# Git aliases
alias ga='git add'
alias gaa='git add --all'
alias gd='git diff'
alias gp='git push'
alias gl='git pull'
alias glo='git log --oneline --graph --decorate'
alias gm='git merge'
alias gss='git status --short'
alias gc='git commit --verbose'
alias gf='git fetch --all'
alias gfp='git fetch --all --prune'
alias gsw='git switch'

# Kubectl aliases
alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kga='kubectl get --all-namespaces'
alias kdel='kubectl delete'
alias krun='kubectl run'

# fzf integration
source <(fzf --zsh)

# Autosuggestions (installed via arch package extra/zsh-autosuggestions)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^ ' autosuggest-accept        # Ctrl-Space accepts the suggestion

# Starship prompt
eval "$(starship init zsh)"

# Syntax highlighting (installed via arch package extra/zsh-syntax-highlighting)
# Must be sourced last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
