set encoding=utf-8
set background=light
set clipboard=

let g:path_to_zettel=$HOME."/Documents/Zettel"

" Behaviour
set noswapfile
set ruler

" Display
set nowrap

set mouse=a
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

" Ignore the since last change error
set hidden

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

runtime ftplugin/man.vim

" Shortcut to save the current buffer
nnoremap ;; :w<CR>

set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" take the name of the box as argument
command -nargs=1 ZBox call zettel#make_box(<f-args>)
command ZNew call zettel#make_zettel()
command ZList call zettel#list_zettels()
