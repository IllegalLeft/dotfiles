set nocompatible
filetype off

" Plugins
""""""""""
if filereadable(expand("~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    let g:hasVundle = 1     " Houston, we have Vundle
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'               " Let vundle manage itself
    " Functionality
    Plugin 'tpope/vim-fugitive'                 " git commands inside vim
    Plugin 'scrooloose/nerdtree'                " filebrowser
    Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy search
    Plugin 'tpope/vim-characterize'             " modernize char info (bound to 'ga')
    " Syntax
    Plugin 'sudar/vim-arduino-syntax'
    Plugin 'zaiste/tmux.vim'
    Plugin 'IllegalLeft/wla-vim'
    " Cosmetic
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    " Colorschemes
    Plugin 'andreasvc/vim-256noir'
    Plugin 'romainl/Apprentice'
    Plugin 'sjl/badwolf'                        " badwolf & goodwolf
    Plugin 'xero/blaquemagick.vim'
    Plugin 'marciomazza/vim-brogrammer-theme'
    Plugin 'vim-scripts/Elda'
    Plugin 'fcpg/vim-fahrenheit'
    Plugin 'morhetz/gruvbox'
    Plugin 'IllegalLeft/honeywell.vim'
    Plugin 'w0ng/vim-hybrid'
    Plugin 'nanotech/jellybeans.vim'
    Plugin 'lighthaus-theme/vim-lighthaus'
    Plugin 'sickill/vim-monokai'
    Plugin 'owickstrom/vim-colors-paramount'
    Plugin 'ikaros/smpl-vim'
    Plugin 'daddye/soda.vim'
    Plugin 'nice/sweater'
    Plugin 'jacoborus/tender.vim'
    Plugin 'bcicen/vim-vice'

    call vundle#end()
else
    let g:hasVundle = 0
endif
filetype plugin indent on

" Vim
"""""""
set autoread        " read file if changed outside of vim
set belloff=esc     " get rid of that bell when I press esc too much
set laststatus=2    " statusbar when there are two windows
set lazyredraw      " screen won't redraw during macros, registers & misc cmds
let mapleader=","
set ttyfast         " fast terminal connection
set ttimeout        " decrease wait time for esc sequence keys
set ttimeoutlen=100


" Editing
""""""""""
set autoindent
set expandtab       " expand tabs into spaces
set hidden          " buffer becomes hidden when abandoned
set history=500
set hlsearch        " highlight search results
set incsearch       " Search while being typed out
set ignorecase      " ignore case in search patterns
set mouse=a         " mouse enabled in normal and visual mode
set nrformats-=octal "removes octal from # formats to inc/dec ('0' prefix)
set softtabstop=4
set shiftwidth=4
set shiftround
set ruler           " show line and column of cursor position
set smartcase       " override ignorecase setting if pattern has uppercase chars
set showmatch       " show matching brackets, braces, etc
set undolevels=100
set wildmenu
set wildmode=list:longest


" Mappings
"""""""""""
" Easier code block movement with < and >
vnoremap < <gv
vnoremap > >gv
" Buffer switching
noremap <Leader>m :bnext<CR>
vnoremap <Leader>m <C-O>:bnext<CR>
inoremap <Leader>m <C-O>:bnext<CR>
noremap <Leader>n :bprevious<CR>
vnoremap <Leader>n <C-O>:bprevious<CR>
inoremap <Leader>n <C-O>:bprevious<CR>

" Fugitive
" enter git command
noremap <Leader>g :Git<Space>
" git status
noremap <Leader>gs :Git<CR>

" netwr & NERDtree
" toggle file browser
noremap <Leader>f :NERDTreeToggle<CR>

" CtrlP
" search for buffers
noremap <Leader>b :CtrlPBuffer<CR>

" Functions
""""""""""""
" ArtMode
function! ArtMode()
    set nu!
    set virtualedit=all
    set colorcolumn=80
endfunction
command! ArtMode : call ArtMode()

" MUSHcode shrink - Leader + t
function! MUSHcodeShrink()
    %s/\r\|\t\|\n\|\s\s\+//g   " remove \r, \t, \n, and multiple \s (2 or more)
    %y+
    undo
    nohl
endfunction
noremap <silent> <Leader>t :call MUSHcodeShrink()<CR>

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
function! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
command! DeleteTrailingWS : call DeleteTrailingWS()


" Theme
""""""""
set fillchars=vert:\|
if ($TERM == "linux")   " TTY
    colorscheme simp16
else                    " Regular terminal
    set bg=dark
    colorscheme tender
endif
highlight ColorColumn ctermbg=DarkGrey


" Syntax
"""""""""
syntax on

" Arduino syntax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" MUSHcode syntax
"au BufRead,BufNewFile *.mush set filetype=mushcode


" Airline
"let g:airline_theme = "minimalist"
"let g:airline_symbols_ascii = 1
" because for some reason, the powerline fonts setting affects whitespace in
" the buffer extension, we want to pretend to use powerline fonts...
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" ...but not /really/ use powerline fonts
" ASCII is best
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.colnr = ' '
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'p'
let g:airline_symbols.notexists = '?'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
