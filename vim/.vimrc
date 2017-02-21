"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"(_)_/ |_|_| |_| |_|_|  \___|
" .vimrc
"

" Plugins
""""""""""
" set the runtime path to include Vundle and initialize
if filereadable(expand("~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
    let g:hasVundle = 1
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " Let vundle manage itself
    Plugin 'gmarik/Vundle.vim'
    " My Bundles here:
    " Cosmetic
    "Plugin 'flazz/vim-colorschemes'         " colorschemes
    "Plugin 'mhinz/vim-startify'             " start page
    "Plugin 'vim-airline/vim-airline'        " status line
    "Plugin 'vim-airline/vim-airline-themes'
    "Plugin 'chriskempson/base16-vim'        " Base16 vim colorschemes
    " Syntax
    Plugin 'zaiste/tmux.vim'                " tmux syntax
    " Functionality
    "Plugin 'FredKSchott/CoVim'	            " collaborative editing
    Plugin 'tpope/vim-fugitive'		        " git commands inside vim
    "Plugin 'scrooloose/nerdtree'	        " filebrowser
    Plugin 'ctrlpvim/ctrlp.vim'             " fuzzy search
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
else
    let g:hasVundle = 0
endif


" Vim
""""""
set nocompatible
" Auto reload of .vimrc file
"autocmd! bufwritepost .vimrc source %
" Set auto read when file outside is changed
set autoread
" Map leader key
let mapleader=","
" Disable backup files
set nobackup
set nowritebackup
set noswapfile
" Set statusline always visible
set laststatus=1
" Don't redraw the screen during macros
set lazyredraw
" fast terminal connection
set ttyfast


" Editor
"""""""""
" Enable mouse
"set mouse=a
" tabstop
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
" Line length to 79 chars
set textwidth=79 " used by gd(?)
" Colour the 80th coloumn
"set colorcolumn=80
" highlight cursour line
"set cursorline
" no wrap on load
set nowrap
" no wrap when typing
set fo-=t
" line numbers
"set number
" buffer becomes hidden when abandoned
set hidden
" command autocomplete like shell
set wildmenu
set wildmode=list:longest
" ignore some files vim has no use to edit
set wildignore+=*.dll,*.msi
set wildignore+=*.o,*.exe
set wildignore+=*.ape,*.flac,*.mp3,*.ogg,*.wav
set wildignore+=*.bmp,*.gif,*.jpeg,*.jpg,*.ico,*.png,*.psd
set wildignore+=*.mp4,*.mpeg,*.webm
set wildignore+=*.gz,*.tar,*.tar.gz,*.zip
" ruler/status line
set ruler
" Set history & undo history limits
set history=700
set undolevels=700
" Highlight search results
set hlsearch
" Search while being typed out
set incsearch
" Set search case insensitive
set ignorecase
" Be smart about cases when searching
set smartcase
" Autoindents
set autoindent
" Show matching brackets/braces/etc
set showmatch

" Mappings
"""""""""""
" Insert Movement - Ctrl + h/j/k/l
"noremap <C-h> <C-o>h
"inoremap <C-l> <C-o>a
"inoremap <C-j> <C-o>j
"inoremap <C-k> <C-o>k
"inoremap <C-^> <C-o><C-^>
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
"noremap <Leader>f :NERDTreeToggle<CR>
noremap <Leader>f :Vexplore<CR>

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
command ArtMode : call ArtMode()
" MUSHcode shrink - Leader + r
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


" Theme
""""""""
" TTY
if ($TERM == "linux")
    color simp16
" Regular terminal
else
    set fillchars=vert:│
    set t_Co=256
    set background=dark
    colorscheme simp16
endif
" Colour column custom
highlight ColorColumn ctermbg=DarkGrey


" Syntax
"""""""""
" Syntax Highlighting
filetype off
filetype plugin indent on
syntax on

" Arduino syntax
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" MUSHcode syntax
"au BufRead,BufNewFile *.mush set filetype=mushcode


" Airline
"let g:airline_theme = "powerlineish"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_left_sep = '»'
"let g:airline_right_sep = '«'
"let g:airline_symbols.linenr = '#'
"let g:airline_symbols.whitespace = 'Ξ'

" CoVim
"let CoVim_default_name = "Sam"

" netwr
let g:netwr_liststyle = 3
let g:netwr_banner = 0

" Startify
"let g:startify_disable_at_vimenter = 0
"let g:startify_files_number = 10
"hi StartifyHeader   ctermfg=034
"let g:startify_custom_header = [
"    \ '                  ',
"    \ ' $$$$  $$$$       ',
"    \ '  $$   a$P        ',
"    \ '  $$ ,$$''         ',
"    \ '  $$a$P  *  $+a+a ',
"    \ '  $$$''   $  $ $ $ ',
"    \ '   ~              ',
"    \ '                  ',
"    \ ]
