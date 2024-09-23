# oh my posh
export PATH=$PATH:/home/mrupp/.local/bin
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

plugins=(
  git
  colorize
  colored-man-pages
  tmux
  python
#  zsh-autosuggestions
#  zsh-syntax-highlighting
)

#ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste up-line-or-search down-line-or-search expand-or-complete accept-line push-line-or-edit)
# Set default command for fzf to use `bat` for file previews
export FZF_DEFAULT_OPTS="--preview 'batcat --style=numbers --color=always {}'"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview-window=right:60%"

# Aliases
#alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias cat='batcat'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"
# Change directory interactively using zoxide and fzf with preview using tree
cdi() {
  local dir
  dir=$(zoxide query -l | fzf --reverse --preview 'tree -C {}' --preview-window=right:60%:wrap)
  if [ -n "$dir" ]; then
    cd "$dir" || return
  fi
}



# Set ZSH path and source oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Alias ls to exa with commonly used options
alias ls='exa --color=auto --icons'
alias ll='exa -lah --color=auto --icons'     # Long format with hidden files
alias l='exa -l --color=auto --icons'        # Long format
alias la='exa -a --color=auto --icons'       # All files including hidden
alias tree='exa -T --color=auto --icons'

# vi mode
set -o vi

