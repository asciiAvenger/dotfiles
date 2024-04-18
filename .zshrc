# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  aliases
  git
  copyfile
  history
  zsh-autosuggestions
  zsh-syntax-highlighting
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# make delete work
#bindkey "^[[3~" delete-char

# completion
source <(kubectl completion zsh)
source <(helm completion zsh)

# keychain for remembering ssh key passwords
#eval $(keychain --eval --quiet id_ed25519)

# aliases
alias ranger='source ranger'
alias hx='helix'
alias cl='clear'
alias pacss='pacman -Ss'
alias yayss='yay -Ss'
alias s='kitten ssh'

# env
export EDITOR='nvim'
#export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.bin
export SSH_ASKPASS=/usr/bin/ksshaskpass
export SSH_ASKPASS_REQUIRE=prefer

# for agnoster
# replace user@hostname with this cute little space invader
# prompt_context() {
#   prompt_segment black default "👾"
# }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
