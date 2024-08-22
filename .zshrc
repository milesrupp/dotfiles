# oh my posh
export PATH=$PATH:/home/mrupp/.local/bin
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

plugins=(
  git
  colorize
  colored-man-pages
  tmux
  python
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste up-line-or-search down-line-or-search expand-or-complete accept-line push-line-or-edit)

# Aliases
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias cat='batcat'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"

# vi mode
set -o vi

# Set ZSH path and source oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

