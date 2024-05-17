if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases neovim
alias vim="nvim"
alias vi="nvim"
alias n="nvim"

alias lvim="~/.local/bin/lvim"

alias sshm="~/.local/bin/sshm"

# alias for eza
alias ls="eza --icons=always --sort=extension"
alias l="eza -la -g --icons"

# Alias for lazygit
alias lzg="lazygit"

# To enable zoxide in fish shell and rebind cd to zoxide
zoxide init --cmd cd fish | source

alias cat="bat" # Use bat as cat


# Set sudoeditor to neovim
set -eg EDITOR nvim

# Setup go path
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# Auto start neofetch
alias nf="clear && neofetch"
function fish_greeting
    nf
end

alias newtmux="tmux new-session -s" # Alias for new tmux session

# Auto start tmux
# if not set -q TMUX
#     set -g TMUX tmux new-session -s Dev
#     eval $TMUX
#     tmux attach-session -t Dev
# end

# Config thefuck
thefuck --alias | source
