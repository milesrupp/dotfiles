# oh my posh
export PATH=$PATH:/home/mrupp/.local/bin
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

# Completion system
autoload -U compinit
compinit

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias cat='batcat'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Shell integrations
# eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

<<<<<<< HEAD
=======
# vi mode
set -o vi
>>>>>>> ab74549 (Updated zsrch and ohmyposh config.toml)
