" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'rustushki/JavaImp.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'mattn/calendar-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" status bar config
let g:lightline = {
    \ 'colorscheme' :'wombat',
    \ }


syntax enable 
colorscheme aang 
set nofoldenable
set foldmethod=marker
set nostartofline

" for vimwiki 
filetype plugin on
set nocompatible
" Run multiple wikis "
let g:vimwiki_list = [
                        \{'path': '~/Sync/VimWiki/personal.wiki'},
                        \{'path': '~/Documents/VimWiki/tech.wiki'}
                \]

"
" set the tabs to 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set relativenumber

set colorcolumn=80

" Pathogen
execute pathogen#infect()

autocmd FileType java setlocal omnifunc=javacomplete#Complete      
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)

imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

"auto indent the whole file
nmap <F10> gg=G 
