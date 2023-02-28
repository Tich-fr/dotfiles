export ZDOTDIR=~/.config/zsh
export CCACHE_DIR=~/.config/ccache
export RIPGREP_CONFIG_PATH=~/.config/rg/config

export PATH=$PATH:/home/timothee/.local/bin
export EDITOR=vim

export CC=clang
export CXX=clang++

#determines search program for fzf
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

