set encoding=utf-8

set background=dark
colorscheme solarized
set clipboard=

" Behaviour
set noswapfile
set ruler

" Display
set nowrap
set number
set relativenumber
set sw=4 et
set softtabstop=-1
set ts=8
set nosmartindent
set cin noai
set tw=60 cc=60
set nojoinspaces
set formatoptions=cloqr

" Sane searching
set hlsearch
set incsearch
set smartcase ignorecase
nmap <silent> <Leader>l :nohlsearch<CR>

" Terminal window title
set title
set titlestring=%t
set titleold=

" Save history
set history=10000
set viminfo+=:10000

""" Syntax hilighting
syntax on
filetype on
filetype indent on
filetype plugin on

set concealcursor=n

" Cursor behaviour
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[1 q"  " default cursor (usually blinking block) otherwise

