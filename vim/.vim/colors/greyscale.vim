"  __ _ _ __ ___ _   _ ___  ___ __ _| | ___
" / _` | '__/ _ \ | | / __|/ __/ _` | |/ _ \
"| (_| | | |  __/ |_| \__ \ (_| (_| | |  __/
" \__, |_|  \___|\__, |___/\___\__,_|_|\___|
" |___/          |___/
" greyscale
"
" By:           Samuel Volk
" Last Edited:  March 27, 2017
" Description:  Simple 16 color scheme with very little highlighting.
"

hi clear

set bg=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "greyscale"

" Vim
hi Normal       cterm=NONE      ctermfg=Gray        ctermbg=NONE
hi Normal       gui=NONE        guifg=Gray          guibg=#141414
hi ModeMsg      ctermfg=White   ctermbg=NONE
hi ModeMsg      guifg=White     guibg=NONE
" Cursor
hi Cursor       cterm=reverse   ctermfg=NONE        ctermbg=NONE
hi Cursor       gui=reverse     guifg=NONE          guibg=NONE
hi lCursor      cterm=NONE      ctermfg=NONE        ctermbg=Cyan
hi lCursor      gui=NONE        guifg=NONE          guibg=Cyan
hi CursorLine   cterm=NONE      ctermfg=NONE        ctermbg=Black
hi CursorLine   gui=NONE        guifg=NONE          guibg=Black
hi CursorLineNr cterm=NONE      ctermfg=White       ctermbg=NONE
hi CursorLineNr gui=NONE        guifg=White         guibg=NONE
hi CursorColumn cterm=NONE      ctermfg=NONE        ctermbg=DarkGrey
hi CursorColumn gui=NONE        guifg=NONE          guibg=DarkGray
hi MatchParen   cterm=NONE      ctermfg=White       ctermbg=NONE
hi MatchParen   gui=NONE        guifg=White         guibg=NONE
" Diff
hi DiffAdd      ctermfg=Green     ctermbg=NONE
hi DiffAdd      guifg=Green       guibg=NONE
hi DiffChange   ctermfg=Yellow    ctermbg=NONE
hi DiffChange   guifg=Yellow      guibg=NONE
hi DiffDelete   ctermfg=Red       ctermbg=NONE
hi DiffDelete   guifg=Red         guibg=NONE
hi DiffText     ctermfg=Blue      ctermbg=NONE
hi DiffText     guifg=Blue        guibg=NONE
" Folds
hi Folded       cterm=NONE  ctermfg=LightGrey ctermbg=DarkGrey
hi Folded       gui=NONE    guifg=LightGrey   guibg=DarkGrey
hi FoldColumn   cterm=NONE  ctermfg=LightGrey ctermbg=DarkGrey
hi FoldColumn   gui=NONE    guifg=LightGrey   guibg=DarkGrey
" Searching
hi Search       ctermfg=Black   ctermbg=White
hi Search       guifg=Black     guibg=White
hi IncSearch    ctermfg=NONE    ctermbg=NONE
hi IncSearch    guifg=NONE      guibg=NONE
" Statusline
hi StatusLine   cterm=NONE  ctermfg=Black   ctermbg=White
hi StatusLine   gui=NONE    guifg=Black     guibg=White
hi StatusLineNC cterm=NONE  ctermfg=Black   ctermbg=DarkGrey
hi StatusLineNC gui=NONE    guifg=Black     guibg=DarkGrey
" Tabs
hi TabLine      cterm=NONE  ctermfg=White   ctermbg=DarkGrey
hi TabLine      gui=NONE    guifg=White     guibg=DarkGrey
hi TabLinefill  cterm=NONE  ctermfg=White   ctermbg=DarkGrey
hi TabLinefill  gui=NONE    guifg=White     guibg=DarkGrey
hi TabLineSel   cterm=NONE  ctermfg=Black   ctermbg=Grey
hi TabLineSel   gui=NONE    guifg=Black     guibg=Grey
" Misc
hi ColorColumn  ctermfg=Blue        ctermbg=Grey
hi ColorColumn  guifg=Blue          guibg=Grey
hi Directory    ctermfg=Blue        ctermbg=NONE
hi Directory    guifg=Blue          guibg=NONE
hi EndOfBuffer  ctermfg=Blue        ctermbg=NONE
hi EndOfBuffer  guifg=Blue          guibg=NONE
hi LineNr       ctermfg=DarkGrey    ctermbg=Black
hi LineNr       guifg=DarkGrey      guibg=Black
hi MoreMsg      ctermfg=DarkBlue    ctermbg=NONE
hi MoreMsg      guifg=DarkBlue      guibg=NONE
hi VertSplit    ctermfg=DarkGrey    ctermbg=LightGrey
hi VertSplit    guifg=DarkGrey      guibg=LightGrey
hi Visual       cterm=reverse       ctermfg=NONE        ctermbg=DarkGrey
hi Visual       gui=reverse         guifg=NONE        guibg=DarkGrey
hi WarningMsg   ctermfg=DarkRed     ctermbg=NONE
hi WarningMsg   guifg=DarkRed       guibg=NONE
hi WildMenu     cterm=NONE          ctermfg=Black       ctermbg=DarkGrey
hi WildMenu     gui=NONE            guifg=Black       guibg=DarkGrey

" Syntax
hi Comment          cterm=NONE      ctermfg=DarkGrey
hi Comment          gui=NONE        guifg=#505050
hi Constant         cterm=NONE      ctermfg=White
hi Constant         gui=NONE        guifg=White
hi Identifier       cterm=NONE      ctermfg=NONE
hi Identifier       gui=NONE        guifg=NONE
hi PreProc          cterm=NONE      ctermfg=NONE
hi PreProc          gui=NONE        guifg=NONE
hi Special          cterm=NONE      ctermfg=Grey
hi Special          gui=NONE        guifg=Grey
hi SpecialComment   cterm=NONE      ctermfg=Grey
hi SpecialComment   gui=NONE        guifg=Grey
hi SpecialKey       cterm=NONE      ctermfg=Grey
hi SpecialKey       gui=NONE        guifg=Grey
hi Debug            cterm=NONE      ctermfg=Grey
hi Debug            gui=NONE        guifg=Grey
hi Statement        cterm=NONE      ctermfg=NONE
hi Statement        gui=NONE        guifg=NONE
hi Type             cterm=NONE      ctermfg=None
hi Type             gui=NONE        guifg=NONE

hi Error        ctermfg=White   ctermbg=Red
hi Error        guifg=White     guibg=Red
hi Todo         ctermfg=Black   ctermbg=White
hi Todo         guifg=Black     guibg=White
