export ZDOTDIR=~/.config/zsh
export PATH="${PATH}:~/.local/bin"
export RIPGREP_CONFIG_PATH="~/.config/rg/config"
export EDITOR=vim

#determines search program for fzf
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

