export ZSH="$ZDOTDIR/omz"
export PATH="${PATH}:${HOME}/.local/bin"
export RIPGREP_CONFIG_PATH="${HOME}/.config/rg/config"

#determines search program for fzf
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

