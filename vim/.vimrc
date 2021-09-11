set encoding=utf-8
set background=dark
set clipboard=

colorscheme solarized
syntax enable

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

set hlsearch
set incsearch
set smartcase ignorecase


filetype on
filetype indent on
filetype plugin on

" Terminal window title
set title
set titlestring=%t
set titleold=

" Save history
set history=10000
set viminfo+=:10000

set concealcursor=n

" Mappings
nmap <Leader>l :nohlsearch<CR>
nmap <Leader>q :q<CR>

nmap <F5> :!make debug<CR>

runtime ftplugin/man.vim

" Shortcut to save the current buffer
nnoremap ;; :w<CR>

set laststatus=2
set statusline=%f 

