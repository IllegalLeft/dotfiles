
#   _               _              
#  | |__   __ _ ___| |__  _ __ ___ 
#  | '_ \ / _` / __| '_ \| '__/ __|
# _| |_) | (_| \__ \ | | | | | (__ 
#(_)_.__/ \__,_|___/_| |_|_|  \___|
#                                  
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias ex='vim -e'
alias view='vim -R'
# color aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# PS1
PS1='[\e[1;32m\u\e[0m@\e[0;32m\h \e[1;32m\W\e[0m]\$ '

# PATH
export PATH="${PATH}:/home/sam/.scripts"
export PATH="${PATH}:/home/sam/games/"

# devkit
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
