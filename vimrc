" set up pathogen
filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set langmenu=none

filetype on
filetype plugin on
filetype indent on

" syntax highlighting
syntax on

" awesome color scheme
colorscheme ir_black

" backslash is to hard for me
let mapleader=","

" escape is to hard for me too
nmap <leader>w :w!<cr>

" tabs ar four spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" gui stuff
set number
set ruler
set nowrap
set autoindent
set scrolloff=8

" always show status line
set laststatus=2 

" always show current mode
set showmode

" set column to 80 and make it gray 
set colorcolumn=80
hi ColorColumn guibg=#4D4D4D

" folding stuff 
set foldmethod=indent
set foldnestmax=5
set nofoldenable
set foldlevel=1

" search highlighting
set hlsearch

" set list characters - this is useful, but somehow anoying in console.
if has('gui_running')
    set list
    set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
endif

" enable javascript autocomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" file formatting
" map <F2> mzgg=G`z<CR>

" nerd tree
nnoremap <silent> <F7> :NERDTreeToggle /empire/trunk<CR>


" tag list
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
" only show functions in php
let tlist_php_settings='php;f:function'

" Command T
let g:CommandTMaxHeight = 15

" change to my working dir
cd /empire/trunk

" PHP Documentor
source ~/.vim/bundle/phpdoc/plugin/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

