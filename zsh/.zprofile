# PATH
typeset -U path
path=(~/bin ~/games ~/documents/repos/wzb-utils $path)

# autostart x
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && [ -z "$TMUX" ]; then
    exec startx
fi
