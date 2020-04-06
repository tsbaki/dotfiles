colorscheme badwolf 
syntax on
set nofoldenable
set foldmethod=marker
if v:version >= 703
    set relativenumber
endif
set numberwidth=3
set nostartofline

" set the tabs to 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
