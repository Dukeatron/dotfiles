if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH

#fish_vi_key_bindings

# Setting PATH for Python 3.10
# The original version is saved in /~/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

# aliases
#alias lc='colorls -A --sd'
alias nv='nvim'
alias l='exa --icons --git --all'
alias tm='tmux'
alias dots="cd $HOME/.config/"

starship init fish | source
