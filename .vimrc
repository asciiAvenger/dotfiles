" line numbers
set number
set relativenumber

" indentation and spaces
set expandtab
set tabstop=2 shiftwidth=2
set smarttab
set autoindent
set smartindent

" case insensitive search
set ignorecase
set smartcase

" search highlighting
set hlsearch
set incsearch

" show bracket matches
set showmatch

set scrolloff=8

set mouse=""

" fuzzy file completion
set path+=**

" show matching files while tab completing
set wildmenu

" netrw (file manager) settings
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3

" syntax highlighting
syntax enable

" keybindings
let mapleader=" "

" open netrw
nmap <leader>m :Ex<CR>

" find and grep
nmap <leader>ff :find 
nmap <leader>fg :vimgrep 

" quick fix list commands
nmap <leader>ql :copen<CR>
nmap <leader>qn :cnext<CR>
nmap <leader>qp :cprevious<CR>
