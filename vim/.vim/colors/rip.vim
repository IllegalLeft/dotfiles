" rip.vim
" Samuel Volk, 2018
"

hi clear

set bg=light

if exists("syntax on")
    syntax reset
endif

let g:colors_name= "rip"


" Vim
hi Normal   guifg=#505050   guibg=#e3e0e0
hi Normal   ctermfg=237     ctermbg=230
hi ModeMsg  guifg=#d0c020   guibg=NONE
hi ModeMsg  ctermfg=178     ctermbg=NONE
" Cursor
hi Cursor   guifg=NONE	    guibg=NONE	    gui=reverse
hi Cursor   ctermfg=NONE    ctermbg=NONE    cterm=reverse
"hi lCursor
hi CursorLine	gui=NONE    guifg=NONE      guibg=#dadada
hi CursorLine   cterm=NONE  ctermfg=NONE    ctermbg=223
hi CursorLineNr	guifg=#407030
hi CursorLineNr ctermfg=216
hi CursorColumn	guifg=NONE      guibg=#dadada
hi CursorColumn	ctermfg=NONE    ctermbg=253
hi MatchParen	guifg=NONE      guibg=#d0d0d0
hi MatchParen	ctermfg=NONE    ctermbg=252
" Diff
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
" Folds
hi Folded	guifg=#405070	guibg=#dadada
hi Folded       ctermfg=60      ctermbg=253
hi FoldColumn	guifg=#405070	guibg=#dadada
hi FoldColumn	ctermfg=60	ctermbg=253
" Searching
hi Search	guifg=NONE	guibg=#c6c6c6
hi Search       ctermfg=NONE    ctermbg=251
hi IncSearch	guifg=NONE	guibg=#c6c6c6
hi IncSearch    ctermfg=NONE    ctermbg=251
" Statusline
hi StatusLine	guifg=#e0e0e0	guibg=#aa7aa0 gui=NONE
hi StatusLineNC guifg=#e0e0e0	guibg=#babaa0 gui=NONE
" Tabs
hi TabLine	guifg=#e0e0e0	guibg=#7a7a50
hi Tablinefill	guifg=#e0e0e0	guibg=#7a7a50
hi TabLineSel	guifg=#7a7a50	guibg=#e0e0e0
" Misc
hi ColorColumn	guifg=#e0e0e0	guibg=#aa7aa0
hi Directory	guifg=#305070	guibg=NONE  gui=NONE
hi EndOfBuffer	guifg=#babaa0	guibg=NONE
hi LineNr	guifg=#babaa0	guibg=NONE
hi MoreMsg	guifg=#babaa0	guibg=NONE
hi NonText	guifg=#babaa0	guibg=NONE
hi SpecialKey	guifg=#7a7a50	guibg=NONE
hi Title	guifg=#90701c	guibg=NONE  gui=NONE
hi VertSplit	guifg=#e0e0e0	guibg=#7a7a50
hi Visual	guifg=NONE   	guibg=#d0c0e0
hi WarningMsg	guifg=#a02080	guibg=NONE
hi WildMenu	guifg=#e3e0e0	guibg=#a02080 gui=bold
" Popup Menu
"hi Pmenu
"hi PmenuSel
"hi PmenuSbar
"hi PmenuThumb

" Syntax
hi Comment	guifg=#90701c   guibg=NONE  gui=NONE
hi Comment      cterm=NONE      ctermfg=180
hi Constant	guifg=#d0c020	guibg=NONE  gui=NONE
hi Constant     cterm=NONE      ctermfg=215
hi Identifier	guifg=#605000	guibg=NONE  gui=NONE
hi Identifier   cterm=NONE      ctermfg=131
hi PreProc	guifg=#505060	guibg=NONE  gui=NONE
hi PreProc      cterm=NONE      ctermfg=60
hi Special	guifg=#305070	guibg=NONE  gui=NONE
hi Special      cterm=NONE      ctermfg=61  ctermbg=NONE
hi Statement	gui=NONE        guifg=#5e7e7e	guibg=NONE
hi Statement    cterm=NONE      ctermfg=58      ctermbg=NONE
hi Type		gui=NONE        guifg=#c54044	guibg=NONE
hi Type         cterm=NONE      ctermfg=203

hi Underlined	term=underline cterm=underline ctermfg=NONE ctermbg=NONE guifg=NONE guifg=NONE gui=underline
hi Error	guifg=#a02080	guibg=NONE
hi Todo		guifg=#b01050	guibg=#e0c0c0
