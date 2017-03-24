#
#                        __ _ _      
#   _____ __  _ __ ___  / _(_) | ___ 
#  |_  / '_ \| '__/ _ \| |_| | |/ _ \
# _ / /| |_) | | | (_) |  _| | |  __/
#(_)___| .__/|_|  \___/|_| |_|_|\___|
#      |_|                           
# .zprofile

# PATH
typeset -U path
path=(~/.scripts ~/games/ $path)

# autostart x
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && [ -z "$TMUX" ]; then
    exec startx
fi
