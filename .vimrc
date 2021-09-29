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

"set number
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
nnoremap <Leader>l :nohlsearch<CR>
nnoremap <Leader>q :q<CR>

" For the mergetool
nnoremap <Leader>ll :diffget LO<CR>
nnoremap <Leader>rr :diffget RE<CR>
nnoremap <Leader>bb :diffget BA<CR>

nnoremap <F5> :!make debug<CR>

runtime ftplugin/man.vim

" Shortcut to save the current buffer
nnoremap ;; :w<CR>

set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Commands for the zettel plugin
command ZShow call zettel#show_zettels_with_tag()
command ZList call zettel#list_boxes()
command ZNew  call zettel#make_zettel()
command -nargs=1 ZBox call zettel#create_box(<f-args>)
