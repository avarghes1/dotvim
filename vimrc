" Maintainer:	Bjorn Winckler <bjorn.winckler@gmail.com>
" Last Change:	Sat Aug 29 2009

set nocompatible

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
"set backspace+=indent,eol,start

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none

filetype on
syntax on
colorscheme ir_black

set number
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set colorcolumn=80
"hi ColorColumn guibg=Purple


"if has("gui_running")
"    set guioptions-=T   
"    set guioptions-=L
"    set guioptions-=R 
"    set guioptions-=b  
"    set guifont=Andale\ Mono:h12
"endif


"toggle nerd tree
"nnoremap <silent> <F7> :NERDTreeToggle /Users/cweibel/Documents/dev<CR>


"tag list
"nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_Use_Right_Window = 1
"let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Update = 1
