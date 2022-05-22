# ---------------------------------------------
# HISTORY
HISTFILE=~/.config/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# ---------------------------------------------
# COMPLETION
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'
zstyle :compinstall filename '~/.config/zsh/.zshrc'
autoload -Uz compinit
compinit

# ---------------------------------------------
# OPTIONS
setopt no_flow_control
setopt append_history
setopt rm_star_silent
unsetopt beep
setopt autocd extendedglob
bindkey -v

# ---------------------------------------------
# BINDINGS
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^H" backward-kill-word

# ---------------------------------------------
# ALIASES
alias ls="exa"
alias tree="br"
alias fim='vim $(fzf)'

# ---------------------------------------------
# TOOLS AND PLUGINS
eval "$(starship init zsh)"
source ~/.config/broot/launcher/bash/br

# ---------------------------------------------
# OTHERS
function chpwd() {
    ls
}

