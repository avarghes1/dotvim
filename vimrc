call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set langmenu=none

filetype on
filetype plugin on
syntax on
colorscheme ir_black

let mapleader=","

nmap <leader>w :w!<cr>

set number
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set colorcolumn=80
hi ColorColumn guibg=Purple
set foldmethod=manual

"toggle nerd tree
nnoremap <silent> <F7> :NERDTreeToggle /Users/cweibel/Documents/dev<CR>


"tag list
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1

"Command T
let g:CommandTMaxHeight = 15
