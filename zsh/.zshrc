#           _              
#   _______| |__  _ __ ___ 
#  |_  / __| '_ \| '__/ __|
# _ / /\__ \ | | | | | (__ 
#(_)___|___/_| |_|_|  \___|
#
#.zshrc


# vim mode
bindkey -v

# Environment Variables
#devkit
export DEVKITPRO='/opt/devkitpro'
export DEVKITARM='/opt/devkitpro/devkitARM'
#tonclib
export TONCLIB='/opt/tonclib'
#Rhisk
export RHISK_COMM='zenbu'

# Aliases
alias ls='ls --color=auto'
alias ex='vim -e'
alias view='vim -R'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias tree='tree -C'
alias mkdir='mkdir -p'
alias pacman='pacman --color auto'

# arch pkgfile command-not-found hook
source /usr/share/doc/pkgfile/command-not-found.bash

# Prompt
autoload -Uz colors
colors
PROMPT="%{$fg[cyan]%}%{$fg_no_bold[blue]%}%c%{$reset_color%} %# "
#RPROMPT="%{$fg_bold[black]%}[%{$fg_no_bold[yellow]%}%n%{$reset_color%}%{$fg_bold[black]%}]%{$reset_color%}"

# completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/sam/.zshrc'
autoload -Uz compinit
compinit

# keybinds
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
