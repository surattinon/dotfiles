if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Alias for custom nvim
alias vim="NVIM_APPNAME=nvchad nvim"
alias vi="NVIM_APPNAME=nvchad nvim"

# NVIM SELECTOR
function nvims
  set items nvchad default 
  set config (printf "%s\n" $items | fzf --prompt=" Neovim Config = " --height=~50% --layout=reverse --border --exit-0)

  if test -z "$config"
    echo "Nothing selected"
    return 0
  else if test "$config" = default
    set config ""
  end

  env NVIM_APPNAME=$config nvim $argv
end

# Alias for eza
alias ls="eza --icons=always --sort=extension"
alias l="eza -la -g --icons"

# Alias for lazygit
alias lzg="lazygit"

# To enable zoxide in fish shell and rebind cd to zoxide
zoxide init --cmd cd fish | source

alias cat="bat" # Use bat as cat

alias svim="sudoedit" # Alias for sudoedit


# Set all editor to neovim
set -x EDITOR /bin/nvim
set -x SUDO_EDITOR /bin/nvim

# Setup go path
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# setup local bin
set -x PATH $PATH $HOME/.local/bin

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

# KEYBINDS
function fish_user_key_bindings
  bind \cn 'nvims'
end
