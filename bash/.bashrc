# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Colors
#########
# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

# Jellybeans color scheme for TTY
#if [ "$TERM" = "linux" ]; then
#    echo -en "\e]P01a1a1a" #black
#    echo -en "\e]P8404040" #darkgrey
#    echo -en "\e]P1d75f5f" #darkred
#    echo -en "\e]P9ea8484" #red
#    echo -en "\e]P287af5f" #darkgreen
#    echo -en "\e]PAc7f09f" #green
#    echo -en "\e]P3ffaf5f" #brown
#    echo -en "\e]PBffcc9a" #yellow
#    echo -en "\e]P487afd7" #darkblue
#    echo -en "\e]PCa5caef" #blue
#    echo -en "\e]P58787af" #darkmagenta
#    echo -en "\e]PDa6a6de" #magenta
#    echo -en "\e]P65f8787" #darkcyan
#    echo -en "\e]PE69b2b2" #cyan
#    echo -en "\e]P7808080" #lightgrey
#    echo -en "\e]PFd7d7d7" #white
#    clear #for background artifacting
#fi

#!/bin/sh
# Base16 Monokai - Virtual console color setup script
# Wimer Hazenberg (http://www.monokai.nl)

color00="272822" # Base 00 - Black
color01="f92672" # Base 08 - Red
color02="a6e22e" # Base 0B - Green
color03="f4bf75" # Base 0A - Yellow
color04="66d9ef" # Base 0D - Blue
color05="ae81ff" # Base 0E - Magenta
color06="a1efe4" # Base 0C - Cyan
color07="f8f8f2" # Base 05 - White
color08="75715e" # Base 03 - Bright Black
color09=$color01 # Base 08 - Bright Red
color10=$color02 # Base 0B - Bright Green
color11=$color03 # Base 0A - Bright Yellow
color12=$color04 # Base 0D - Bright Blue
color13=$color05 # Base 0E - Bright Magenta
color14=$color06 # Base 0C - Bright Cyan
color15="f9f8f5" # Base 07 - Bright White

# 16 color space
echo -en "\e]P0$color00"
echo -en "\e]P1$color01"
echo -en "\e]P2$color02"
echo -en "\e]P3$color03"
echo -en "\e]P4$color04"
echo -en "\e]P5$color05"
echo -en "\e]P6$color06"
echo -en "\e]P7$color07"
echo -en "\e]P8$color08"
echo -en "\e]P9$color09"
echo -en "\e]PA$color10"
echo -en "\e]PB$color11"
echo -en "\e]PC$color12"
echo -en "\e]PD$color13"
echo -en "\e]PE$color14"
echo -en "\e]PF$color15"
if [ -x /sbin/clear ]; then 
  /sbin/clear
else
  echo -en "\e[H"
  echo -en "\e[2J"
fi

# clean up
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}(\[$BRed\]\@\[$Color_Off\])\[$Cyan\] \u@\h:\w\[$Color_Off\]\$ "
else
    PS1='${debian_chroot:+($debian_chroot)}(\@) \u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# CUSTOM STUFF
###############

# disable XON
stty -ixon

# PATH stuff
PATH=$PATH:/home/sam/.scripts
PATH=$PATH:/home/sam/games
PATH=$PATH:/home/sam/.local/bin

#devkitPro
export DEVKITPRO=/home/sam/.lib/devkitPro
export DEVKITARM=$DEVKITPRO/devkitARM

#Ham (GBA)
export HAMDIR=/home/sam/.lib/ham

# Arduino
export ARDUINO_DIR=/usr/share/arduino
export ARDMK_DIR=/usr
export AVR_TOOLS_DIR=/usr

# Ranger
# just the default editor
export EDITOR=vi

# i3-sensible-terminal
export TERMINAL=uxterm

# Login ansis
# tomsrocket/console-login-ansi-art @ GitHub
#if [[ $- =~ "i" ]]; then
#	MYFILE=`ls ~/.bash/* |sort -R | tail -1`
#	echo $MYFILE
#	echo
#	iconv -c -f 437 -t utf-8 $MYFILE
#	echo
#fi

#source /etc/bash_completion.d/password-store

# base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
