" Vim color file
" Maintainer:	Andre Brasil	
" Last Change:	

" This color scheme uses a dark grey background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "gruber"

" Either a 237 or a more blueish
hi Normal ctermbg=234 ctermfg=231 guifg=#e4e4ef guibg=#181818

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit term=reverse cterm=reverse gui=reverse
" As close to the background gray as possible
hi Visual term=reverse ctermbg=240 guibg=grey60
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
" Gold 3
hi Cursor ctermbg=220 guibg=#FFDD33 guifg=Black
hi lCursor guibg=Cyan guifg=Black
hi Directory term=bold ctermfg=LightCyan guifg=Cyan
hi LineNr term=underline ctermfg=LightGrey guifg=LightGrey
hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey30
hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi SpecialKey term=bold ctermfg=Red guifg=Red
hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=LightRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
hi CursorColumn term=reverse ctermbg=Black guibg=grey40
hi CursorLine term=underline cterm=underline guibg=grey40

" Groups for syntax highlighting
hi Keyword gui=bold cterm=bold ctermfg=220 guifg=Yellow 
hi Todo cterm=bold ctermfg=130 ctermbg=236 term=bold guibg=#333333 guifg=Yellow
" Light sky blue
hi Constant term=underline ctermfg=109 guifg=#ffa0a0
" Dark green
hi String ctermfg=76 guifg=LightBlue

hi Identifier ctermfg=109 guifg=LightBlue
" Vim for some reason also takes the function keyword as the keyword for the {}

" PaleTurquoise
hi Type ctermfg=109

" Light steelblue 3
hi Function ctermfg=146 guifg=#7e8eb7

" TODO get the todo tag to be bold
hi Comment ctermfg=214 guifg=Orange

"Gold
hi PreProc cterm=bold term=bold ctermfg=220

hi Special term=bold ctermfg=LightRed guifg=Orange


if &t_Co > 8
  " Gold 
  hi Statement term=bold cterm=bold ctermfg=220 guifg=#ffdd33 gui=bold
endif
hi Ignore ctermfg=DarkGrey guifg=grey20

" vim: sw=2
