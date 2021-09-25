set encoding=utf-8
set background=dark
set clipboard=

" For the zettelkasten
let g:path_to_zettel= $HOME."/Documents/Zettel"

colorscheme solarized
syntax enable

" Behaviour
set noswapfile
set ruler

" Display
set nowrap

set nonumber
set relativenumber

set sw=2 et
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

nmap <F5> :!make<CR>

runtime ftplugin/man.vim

" Shortcut to save the current buffer
nnoremap ;; :w<CR>

set laststatus=2
set statusline=%f 

" Commands for the zettel plugin
command -nargs=1 ZetShow call zettel#show_zettels_with_tag(<f-args>)
command ZetList call zettel#list_zettels()
command ZetNew  call zettel#make_zettel()
command ZetLink call zettel#link()
