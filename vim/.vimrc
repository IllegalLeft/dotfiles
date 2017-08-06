"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"(_)_/ |_|_| |_| |_|_|  \___|
" .vimrc
"

" Plugins
""""""""""
if filereadable(expand("~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    let g:hasVundle = 1     " Houston, we have Vundle
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'gmarik/Vundle.vim'  " Let vundle manage itself
    " Functionality
    Plugin 'tpope/vim-fugitive'		        " git commands inside vim
    Plugin 'scrooloose/nerdtree'	        " filebrowser
    Plugin 'ctrlpvim/ctrlp.vim'             " fuzzy search
    " Syntax
    Plugin 'zaiste/tmux.vim'                " tmux syntax
    " Cosmetic
    "Plugin 'flazz/vim-colorschemes'         " colorschemes
    "Plugin 'mhinz/vim-startify'             " start page
    Plugin 'vim-airline/vim-airline'        " status line
    Plugin 'vim-airline/vim-airline-themes'
    " Colorschemes
    Plugin 'andreasvc/vim-256noir'
    Plugin 'romainl/Apprentice'
    Plugin 'sjl/badwolf'                    " badwolf & goodwolf
    Plugin 'xero/blaquemagick.vim'
    Plugin 'marciomazza/vim-brogrammer-theme'
    Plugin 'zefei/cake16'
    Plugin 'vim-scripts/donbass.vim'
    Plugin 'vim-scripts/Elda'
    Plugin 'fcpg/vim-fahrenheit'
    Plugin 'morhetz/gruvbox'
    Plugin 'noahfrederick/vim-hemisu'
    Plugin 'w0ng/vim-hybrid'
    Plugin 'nanotech/jellybeans.vim'
    Plugin 'sickill/vim-monokai'
    Plugin 'bruth/vim-newsprint-theme'
    Plugin 'owickstrom/vim-colors-paramount'
    Plugin 'ikaros/smpl-vim'
    Plugin 'daddye/soda.vim'
    Plugin 'xero/sourcerer.vim'
    Plugin 'vim-scripts/summerfruit256.vim'
    Plugin 'nice/sweater'
    Plugin 'jacoborus/tender.vim'
    Plugin 'carlson-erik/wolfpack'
    Plugin 'bcicen/vim-vice'

    call vundle#end()            " required
    filetype plugin indent on    " required
else
    let g:hasVundle = 0
endif

" Vim
"""""""
set nocompatible    " this is vim, not vi
"autocmd! bufwritepost .vimrc source %  " Auto reload of .vimrc file
set autoread    " read file if changed outside of vim
set belloff=esc " get rid of that bell when I accidentally press esc too much
set laststatus=1    " statusbar when there are two windows
set lazyredraw  " screen will not redraw during macros, registers and other cmds
let mapleader=","
set ttyfast     " fast terminal connection


" Editor
"""""""""
set autoindent
set expandtab
set hidden      " buffer becomes hidden when abandoned
set history=200
set hlsearch    " highlight search results
set incsearch   " Search while being typed out
set ignorecase  " ignore case in search patterns
set mouse=nv    " mouse enabled in normal and visual mode
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set ruler       " show line and column of cursor position
set smartcase   " override ignorecase setting if pattern has uppercase chars
set showmatch   " show matching brackets, braces, etc
set textwidth=79    " max witdth of text that is being inserted
set undolevels=100
set wildmenu
set wildmode=list:longest


" Mappings
"""""""""""
" Save - Leader + w
noremap <Leader>w :update<CR>
vnoremap <Leader>w <C-C>:update<CR>
inoremap <Leader>w <C-O>:update<CR>

" Quit - Ctrl + q
noremap <Leader>q :quit<CR>
inoremap <Leader>q <C-O>:quit<CR>
vnoremap <Leader>q <C-O>:update<CR>
" Sort - Leader + S
vnoremap <Leader>S :sort<CR>
" Easier code block movement with < and >
vnoremap < <gv
vnoremap > >gv
" Buffer switching - Leader + m/n
noremap <Leader>m :bnext<CR>
vnoremap <Leader>m <C-O>:bnext<CR>
inoremap <Leader>m <C-O>:bnext<CR>
noremap <Leader>n :bprevious<CR>
vnoremap <Leader>n <C-O>:bprevious<CR>
inoremap <Leader>n <C-O>:bprevious<CR>

" Easier Buffer switching - Leader + F#
noremap <Leader>1 <C-O>:buffer 1<CR>
noremap <Leader>2 <C-O>:buffer 2<CR>
noremap <Leader>3 <C-O>:buffer 3<CR>
noremap <Leader>4 <C-O>:buffer 4<CR>
noremap <Leader>5 <C-O>:buffer 5<CR>
noremap <Leader>6 <C-O>:buffer 6<CR>
noremap <Leader>7 <C-O>:buffer 7<CR>
noremap <Leader>8 <C-O>:buffer 8<CR>
noremap <Leader>9 <C-O>:buffer 9<CR>
noremap <Leader>0 <C-O>:buffer 10<CR>

" Fugitive
" map <Leader>g to enter git command
noremap <Leader>g :Git<Space>
" map <Leader>gc to git commit
noremap <Leader>gc :Gcommit<CR>
" map <Leader>gp to git pull
noremap <Leader>gp :Gpull<CR>
" map <Leader>gs to git status
noremap <Leader>gs :Gstatus<CR>

" netwr & NERDtree
" map <Leader> + f to toggle
noremap <Leader>f :NERDTreeToggle<CR>
"noremap <Leader>f :Vexplore<CR>

" CtrlP
" map <Leader> + b to search for buffers
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
if ($TERM == "linux")
    " TTY
    color simp16
else
    " Regular terminal
    set fillchars=vert:│
    set t_Co=256
    let base16colorspace=256 " Access colors present in 256 colorspace
    set background=dark
    colorscheme simp16
endif
" Colour column custom
highlight ColorColumn ctermbg=DarkGrey


" Syntax
"""""""""
filetype off
filetype plugin indent on
syntax on

" Arduino syntax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" MUSHcode syntax
"au BufRead,BufNewFile *.mush set filetype=mushcode


" Airline
let g:airline_theme = "minimalist"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_symbols_ascii = 1
if !exists('g:airline_sumbols')
    let g:airline_symbols = {}
endif
"let g:airline_left_sep = '▓▒░'
"let g:airline_right_sep = '░▒▓'
let g:airline_symbols.linenr = '#'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_symbols.readonly = 'RO'
