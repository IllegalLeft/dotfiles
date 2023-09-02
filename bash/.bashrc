# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# History
HISTSIZE=1000
HISTFILESIZE=1000
export HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# save all lines of a multiline cmd to same history entry
shopt -s cmdhist

# line wrap on window resize
shopt -s checkwinsize


# Aliases
alias ex='vim -e'
alias view='vim -R'
alias info='info --vi-keys'
alias mkdir='mkdir -p'
alias QUIT='exit'
# color aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias tree='tree -C'


# Prompt
PS1='[\[\e[1;32m\]\u\[\e[0m\]@\[\e[0;32m\]\h \[\e[1;32m\]\W\[\e[0m\]]\$ '


# Environment Variables
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export PATH="${PATH}:/home/sam/bin"
export PATH="${PATH}:/home/sam/games/"

# devkit
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM

# Rhisk
export RHISK_COMM="zenbu"
