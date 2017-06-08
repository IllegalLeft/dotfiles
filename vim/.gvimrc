"              _
"   __ ___   _(_)_ __ ___  _ __ ___
"  / _` \ \ / / | '_ ` _ \| '__/ __|
" | (_| |\ V /| | | | | | | | | (__
"(_)__, | \_/ |_|_| |_| |_|_|  \___|
"  |___/
" .gvimrc
"
" Auto reload of .gvimrc file
autocmd! bufwritepost .gvimrc source %

" UI
" default is egmrLtT
" remove toolbar and scrollbars
set guioptions=egmt
" e - tabpages/line
" g - grey meny items
" m - menu bar is present
" t - tear off menu items

" Theme
set bg=dark
colorscheme jellybeans
set guifont=Source\ Code\ Pro\ Medium\ 8
set fillchars=vert:│

" Airline
set laststatus=2
AirlineTheme minimalist
let g:airline_powerline_fonts = 1
