"     _                 _  __   
" ___(_)_ __ ___  _ __ / |/ /_  
"/ __| | '_ ` _ \| '_ \| | '_ \ 
"\__ \ | | | | | | |_) | | (_) |
"|___/_|_| |_| |_| .__/|_|\___/ 
"                |_|            
" simp16
" By: Samuel Volk
" Last Edited: Friday, November 4, 2016
" Description: Simple 16 color scheme with very little highlighting.

hi clear

set bg=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "simp16"

" Vim
hi Normal       cterm=NONE      ctermfg=LightGrey  ctermbg=Black
hi ModeMsg      ctermfg=White   ctermbg=NONE
" Cursor
hi Cursor       cterm=NONE      ctermfg=bg          ctermbg=fg
hi lCursor      cterm=NONE      ctermfg=NONE        ctermbg=Cyan
hi CursorLine   cterm=NONE      ctermfg=NONE        ctermbg=DarkGrey
hi CursorLineNr cterm=NONE      ctermfg=DarkGrey    ctermbg=NONE
hi CursorColumn cterm=NONE      ctermfg=NONE        ctermbg=DarkGrey
" Diff
hi DiffAdd      ctermfg=Black       ctermbg=Green
hi DiffChange   ctermfg=Black       ctermbg=Yellow
hi DiffDelete   ctermfg=Black       ctermbg=Red
hi DiffText     ctermfg=Black       ctermbg=Blue
" Folds
hi Folded       cterm=NONE      ctermfg=LightGrey   ctermbg=DarkGrey
hi FoldColumn   cterm=NONE      ctermfg=LightGrey   ctermbg=DarkGrey
" Searching
hi Search       ctermfg=Black       ctermbg=White
hi IncSearch    ctermfg=NONE        ctermbg=NONE
" Statusline
hi StatusLine   cterm=NONE      ctermfg=Black       ctermbg=White
hi StatusLineNC cterm=NONE      ctermfg=Black       ctermbg=Grey
" Tabs
hi TabLine      cterm=NONE      ctermfg=White       ctermbg=DarkGrey
hi TabLinefill  cterm=NONE      ctermfg=White       ctermbg=DarkGrey
hi TabLineSel   cterm=NONE      ctermfg=Black       ctermbg=Grey
" Misc
hi Directory    ctermfg=Blue        ctermbg=NONE
hi EndOfBuffer  ctermfg=Blue        ctermbg=NONE
hi LineNr       ctermfg=DarkGrey    ctermbg=NONE
hi MoreMsg      ctermfg=DarkBlue    ctermbg=NONE
hi VertSplit    ctermfg=DarkGrey    ctermbg=LightGrey
hi Visual       cterm=reverse       ctermfg=NONE        ctermbg=DarkGrey
hi WarningMsg   ctermfg=DarkRed     ctermbg=NONE
hi WildMenu     cterm=NONE          ctermfg=Black       ctermbg=DarkGrey

" Syntax
hi Comment      cterm=NONE      ctermfg=DarkGrey       
hi Constant     cterm=NONE      ctermfg=White
hi Identifier   cterm=NONE      ctermfg=NONE
hi PreProc      cterm=NONE      ctermfg=NONE
hi Special      cterm=NONE      ctermfg=NONE
hi SpecialComment   cterm=NONE  ctermfg=Green    ctermbg=NONE
hi Debug        cterm=NONE      ctermfg=DarkGreen
hi Statement    cterm=NONE      ctermfg=NONE
hi Type	        cterm=NONE      ctermfg=NONE

hi Error        ctermfg=White   ctermbg=DarkRed
hi Todo         ctermfg=Black   ctermbg=Yellow

" vim: sw=2
