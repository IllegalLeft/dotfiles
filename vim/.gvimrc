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
" default = egmrLtT
" remove toolbar and scrollbars
set guioptions=egmt
" e - tabpages/line
" g - grey meny items
" m - menu bar is present
" t - tear off menu items

" Theme
set bg=dark
colorscheme seti
set guifont=artwiz\ smoothansi\ 8
set fillchars=vert:│

" Airline
"AirlineTheme papercolor
"let g:airline_powerline_fonts = 1
