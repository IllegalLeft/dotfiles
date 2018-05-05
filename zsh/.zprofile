# PATH
typeset -U path
path=(~/.scripts ~/games ~/documents/repos/wzb-utils $path)

# autostart x
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && [ -z "$TMUX" ]; then
    exec startx
fi
