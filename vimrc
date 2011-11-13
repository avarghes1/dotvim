call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
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
hi ColorColumn guibg=Purple


"if has("gui_running")
"    set guioptions-=T   
"    set guioptions-=L
"    set guioptions-=R 
"    set guioptions-=b  
"    set guifont=Andale\ Mono:h12
"endif


"toggle nerd tree
nnoremap <silent> <F7> :NERDTreeToggle /Users/cweibel/Documents/dev<CR>


"tag list
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
