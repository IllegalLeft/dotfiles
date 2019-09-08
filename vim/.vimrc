" Plugins
""""""""""
if filereadable(expand("~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    let g:hasVundle = 1     " Houston, we have Vundle
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'               " Let vundle manage itself
    " Functionality
    "Plugin 'tpope/vim-fugitive'                " git commands inside vim
    Plugin 'scrooloose/nerdtree'                " filebrowser
    Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy search
    " Syntax
    Plugin 'sudar/vim-arduino-syntax'
    Plugin 'zaiste/tmux.vim'
    Plugin 'IllegalLeft/wla-vim'
    " Cosmetic
    "Plugin 'flazz/vim-colorschemes'
    "Plugin 'mhinz/vim-startify'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    " Colorschemes
    Plugin 'andreasvc/vim-256noir'
    Plugin 'romainl/Apprentice'
    Plugin 'sjl/badwolf'                        " badwolf & goodwolf
    Plugin 'xero/blaquemagick.vim'
    Plugin 'marciomazza/vim-brogrammer-theme'
    Plugin 'zefei/cake16'
    Plugin 'vim-scripts/donbass.vim'
    Plugin 'vim-scripts/Elda'
    Plugin 'fcpg/vim-fahrenheit'
    Plugin 'morhetz/gruvbox'
    Plugin 'noahfrederick/vim-hemisu'
    Plugin 'IllegalLeft/honeywell.vim'
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
"autocmd! bufwritepost .vimrc source %  " Auto reload of .vimrc file
set autoread    " read file if changed outside of vim
set belloff=esc " get rid of that bell when I accidentally press esc too much
set laststatus=2    " statusbar when there are two windows
set lazyredraw  " screen will not redraw during macros, registers and other cmds
let mapleader=","
set ttyfast     " fast terminal connection


" Editing
""""""""""
set autoindent
set expandtab   " expand tabs into spaces
set hidden      " buffer becomes hidden when abandoned
set history=200
set hlsearch    " highlight search results
set incsearch   " Search while being typed out
set ignorecase  " ignore case in search patterns
set mouse=a     " mouse enabled in normal and visual mode
set softtabstop=4
set shiftwidth=4
set shiftround
set ruler       " show line and column of cursor position
set smartcase   " override ignorecase setting if pattern has uppercase chars
set showmatch   " show matching brackets, braces, etc
set undolevels=100
set wildmenu
set wildmode=list:longest


" Mappings
"""""""""""
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
set fillchars=vert:\|
if ($TERM == "linux")   " TTY
    color simp16
else                    " Regular terminal
    colorscheme sixteen
endif
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
