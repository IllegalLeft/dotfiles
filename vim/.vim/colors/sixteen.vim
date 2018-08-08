"     _      _
" ___(_)_  _| |_ ___  ___ _ __
"/ __| \ \/ / __/ _ \/ _ \ '_ \
"\__ \ |>  <| ||  __/  __/ | | |
"|___/_/_/\_\\__\___|\___|_| |_|
" sixteen
"
" By:           Samuel Volk
" Last Edited:  March 27, 2017
" Description:  Simple 16 colour scheme with very little highlighting. Used for
"               terminals that already have the first sixteen colours set to
"               custom colours. Not meant for GVim.
"

hi clear

set bg=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "sixteen"

" 256 Colors
" Vim
hi Normal       cterm=NONE      ctermfg=Gray        ctermbg=NONE
hi ModeMsg      ctermfg=White   ctermbg=NONE
" Cursor
hi Cursor       cterm=reverse   ctermfg=NONE        ctermbg=NONE
hi lCursor      cterm=NONE      ctermfg=NONE        ctermbg=Cyan
hi CursorLine   cterm=NONE      ctermfg=NONE        ctermbg=Black
hi CursorLineNr cterm=NONE      ctermfg=White       ctermbg=NONE
hi CursorColumn cterm=NONE      ctermfg=NONE        ctermbg=DarkGrey
hi MatchParen   cterm=NONE      ctermfg=Yellow      ctermbg=NONE
" Diff
hi DiffAdd      ctermfg=Green       ctermbg=NONE
hi DiffChange   ctermfg=Yellow      ctermbg=NONE
hi DiffDelete   ctermfg=Red         ctermbg=NONE
hi DiffText     ctermfg=Blue        ctermbg=NONE
" Folds
hi Folded       cterm=NONE      ctermfg=LightGrey   ctermbg=DarkGrey
hi FoldColumn   cterm=NONE      ctermfg=LightGrey   ctermbg=DarkGrey
" Searching
hi Search       ctermfg=Black       ctermbg=DarkYellow
hi IncSearch    ctermfg=NONE        ctermbg=NONE
" Statusline
hi StatusLine   cterm=NONE      ctermfg=Black       ctermbg=White
hi StatusLineNC cterm=NONE      ctermfg=Black       ctermbg=DarkGrey
" Tabs
hi TabLine      cterm=NONE      ctermfg=White       ctermbg=DarkGrey
hi TabLinefill  cterm=NONE      ctermfg=White       ctermbg=DarkGrey
hi TabLineSel   cterm=NONE      ctermfg=Black       ctermbg=Grey
" Misc
hi ColorColumn  ctermfg=Blue        ctermbg=Grey
hi Directory    ctermfg=Blue        ctermbg=NONE
hi EndOfBuffer  ctermfg=Blue        ctermbg=NONE
hi LineNr       ctermfg=DarkGrey    ctermbg=Black
hi MoreMsg      ctermfg=DarkBlue    ctermbg=NONE
hi VertSplit    ctermfg=DarkGrey    ctermbg=LightGrey
hi Visual       cterm=reverse       ctermfg=NONE        ctermbg=DarkGrey
hi WarningMsg   ctermfg=DarkRed     ctermbg=NONE
hi WildMenu     cterm=NONE          ctermfg=Black       ctermbg=DarkGrey

" Syntax
hi Comment          cterm=NONE      ctermfg=DarkGreen
hi Constant         cterm=NONE      ctermfg=Magenta
hi Identifier       cterm=NONE      ctermfg=Red
hi PreProc          cterm=NONE      ctermfg=Cyan
hi Special          cterm=NONE      ctermfg=DarkGrey
hi SpecialComment   cterm=NONE      ctermfg=Green
hi SpecialKey       cterm=NONE      ctermfg=DarkBlue
hi Debug            cterm=NONE      ctermfg=Magenta
hi Statement        cterm=NONE      ctermfg=Blue
hi Type             cterm=NONE      ctermfg=Red

hi Error        ctermfg=White   ctermbg=Red
hi Todo         ctermfg=Black   ctermbg=White


" GUI Colors
" Vim
hi Normal       gui=NONE      guifg=Gray        guibg=Black
hi ModeMsg      guifg=White   guibg=NONE
" Cursor
hi Cursor       gui=reverse   guifg=NONE        guibg=NONE
hi lCursor      gui=NONE      guifg=NONE        guibg=Cyan
hi CursorLine   gui=NONE      guifg=NONE        guibg=Black
hi CursorLineNr gui=NONE      guifg=White       guibg=NONE
hi CursorColumn gui=NONE      guifg=NONE        guibg=DarkGray
hi MatchParen   gui=NONE      guifg=Yellow      guibg=NONE
" Diff
hi DiffAdd      guifg=Green       guibg=NONE
hi DiffChange   guifg=Yellow      guibg=NONE
hi DiffDelete   guifg=Red         guibg=NONE
hi DiffText     guifg=Blue        guibg=NONE
" Folds
hi Folded       gui=NONE      guifg=LightGrey   guibg=DarkGrey
hi FoldColumn   gui=NONE      guifg=LightGrey   guibg=DarkGrey
" Searching
hi Search       guifg=Black       guibg=DarkYellow
hi IncSearch    guifg=NONE        guibg=NONE
" Statusline
hi StatusLine   gui=NONE      guifg=Black       guibg=White
hi StatusLineNC gui=NONE      guifg=Black       guibg=DarkGrey
" Tabs
hi TabLine      gui=NONE      guifg=White       guibg=DarkGrey
hi TabLinefill  gui=NONE      guifg=White       guibg=DarkGrey
hi TabLineSel   gui=NONE      guifg=Black       guibg=Grey
" Misc
hi ColorColumn  guifg=Blue        guibg=Grey
hi Directory    guifg=Blue        guibg=NONE
hi EndOfBuffer  guifg=Blue        guibg=NONE
hi LineNr       guifg=DarkGrey    guibg=Black
hi MoreMsg      guifg=DarkBlue    guibg=NONE
hi VertSplit    guifg=DarkGrey    guibg=LightGrey
hi Visual       gui=reverse       guifg=NONE        guibg=DarkGrey
hi WarningMsg   guifg=DarkRed     guibg=NONE
hi WildMenu     gui=NONE          guifg=Black       guibg=DarkGrey

" Syntax
hi Comment          gui=NONE      guifg=DarkGreen
hi Constant         gui=NONE      guifg=Magenta
hi Identifier       gui=NONE      guifg=Red
hi PreProc          gui=NONE      guifg=Cyan
hi Special          gui=NONE      guifg=DarkGrey
hi SpecialComment   gui=NONE      guifg=Green
hi SpecialKey       gui=NONE      guifg=DarkBlue
hi Debug            gui=NONE      guifg=Magenta
hi Statement        gui=NONE      guifg=Blue
hi Type             gui=NONE      guifg=Red

hi Error        guifg=White   guibg=Red
hi Todo         guifg=Black   guibg=White
