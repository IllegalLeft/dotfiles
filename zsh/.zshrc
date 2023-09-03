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
alias info='info --vi-keys'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias tree='tree -C'
alias mkdir='mkdir -p'
alias pacman='pacman --color auto'
alias QUIT='exit'

# arch pkgfile command-not-found hook
#source /usr/share/doc/pkgfile/command-not-found.zsh


# Prompt
setopt PROMPT_SUBST
autoload -Uz colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git cvs svn # only need to enable a few vcs
zstyle ':vcs_info:*' formats '%s[%F{cyan}%b%f]'
precmd () { vcs_info }
PROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%} %# '
#RPROMPT="%{$fg_bold[black]%}[%{$fg_no_bold[cyan]%}%n%{$reset_color%}%{$fg_bold[black]%}]%{$reset_color%}"
RPROMPT='${vcs_info_msg_0_}'


# Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/sam/.zshrc'
autoload -Uz compinit
compinit


# Keybinds
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
