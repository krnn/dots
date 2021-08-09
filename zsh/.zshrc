# export ZSH="$HOME/.config/zsh/oh-my-zsh"
CASE_SENSITIVE="false"
# Source files
source "$ZDOTDIR/aliases"
source "$ZDOTDIR/prompt.sh"
source "$ZDOTDIR/functions.sh"


# ZSH_THEME="robbyrussell"
# 
# setopt autocd extendedglob nomatch menucomplete
# setopt interactive_comments
# stty stop undef		# Disable ctrl-s to freeze terminal.
# unsetopt BEEP
 
# History in $ZDOTDIR:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh/.zsh-history
 
# completions
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**' menu select
#
# autoload -Uz compinit
# zstyle ':completion:*' menu select
# # zstyle ':completion::complete:lsof:*' menu yes select
# zmodload zsh/complist
# # compinit
# _comp_options+=(globdots)		# Include hidden files.
# 
# autoload -U up-line-or-beginning-search
# autoload -U down-line-or-beginning-search
# zle -N up-line-or-beginning-search
# zle -N down-line-or-beginning-search
# 
# # Colors
# autoload -Uz colors && colors
# 
# # Useful Functions
# source "$ZDOTDIR/zsh-functions"
# 
# # ALIASES
# # settings files
# alias zshrc="vim ~/.config/zsh/.zshrc"
# alias critty="cd ~/.config/alacritty/"
# alias vimrc="vim ~/.config/nvim/general/settings.vim"
# alias proj="cd ~/Projects/"
# alias trials="cd ~/Projects/trials/"
# 
# # switch to command mode with jj
# bindkey "^[j" vi-cmd-mode
# 
# # Plugins
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
# zsh_add_plugin "zsh-users/zsh-autosuggestions"
# zsh_add_plugin "hlissner/zsh-autopair"
# 
# # vi mode
# bindkey -v
# 
# # move up/down with k,j
# bindkey "^k" history-search-backward
# bindkey "^j" history-search-forward
# 
# export KEYTIMEOUT=1
# 
# # Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char
# 
# # Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
# 
# # Use lf to switch directories and bind it to ctrl-o
# lfcd () {
#     tmp="$(mktemp)"
#     lf -last-dir-path="$tmp" "$@"
#     if [ -f "$tmp" ]; then
#         dir="$(cat "$tmp")"
#         rm -f "$tmp"
#         [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#     fi
# }
# bindkey -s '^o' 'lfcd\n'
# 
# # Edit line in vim with ctrl-e:
# autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line
# 
# eval "$(starship init zsh)"


export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

export export GOPATH=$HOME/go
. "$HOME/.cargo/env"
