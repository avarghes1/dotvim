" set up pathogen
filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set langmenu=none

filetype on
filetype plugin on
filetype indent on

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" disable sound on errors
set noerrorbells
set novisualbell

" yank to the system register (*) by default
set clipboard=unnamed

" syntax highlighting
syntax on

" awesome color scheme
colorscheme ir_black

" backslash is to hard for me
let mapleader=","

" escape is to hard for me too
nmap <leader>w :w!<cr>

" tabs are four spaces
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

"this is helpful (at least to me) but incredibly slow
"set cursorline

" change cursor color
hi Cursor guibg=#FFFFFF
hi iCursor guibg=#FF0000
set guicursor=n-v-c:block-Cursor
set guicursor+=i:hor100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10


" folding stuff 
set foldmethod=indent
set foldnestmax=5
set nofoldenable
set foldlevel=1

" search highlighting
set hlsearch

" delete to the left in insert mode with backspace
set backspace=indent,eol,start

" set list characters - this is useful, but somehow annoying in console.
if has('gui_running')
    set list
    set listchars=tab:>-,trail:.,extends:>,precedes:<
endif

" remember last location in file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"")  <= line("$")
                \|exe "normal g'\"" | endif
endif

" change working directory to current file directory
" autocmd BufEnter * lcd %:p:h

" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
              \if &omnifunc =omnifunc= "" |
              \setlocal omnifunc=syntaxcomplete#Complete |
              \endif
endif

" make CSS omnicompletion work for SASS and  SCSS
autocmd BufNewFile,BufRead *.scss             set ft=scss.css
autocmd BufNewFile,BufRead *.sass             set ft=sass.css
"
" nerd tree
nnoremap <Leader>n :NERDTreeToggle <CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

nnoremap <Leader>l :TagbarToggle <CR> 

" tag list
" nnoremap <Leader>l :TlistToggle<CR>
" let Tlist_Use_Right_Window = 1
" let Tlist_Auto_Highlight_Tag = 1
" let Tlist_Auto_Update = 1
" let Tlist_Show_One_File = 1
" let Tlist_Sort_Type = "name"
" let Tlist_Enable_Fold_Column = 0
" " only show functions in php
" let tlist_php_settings='php;f:function'

" Command T
let g:CommandTMaxHeight = 15

" PHP Documenter
" is this needed???
source ~/.vim/bundle/phpdoc/plugin/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

" Gundo
nnoremap <Leader>g :GundoToggle<CR>
let g:gundo_help = 0

" delete trailing white space
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+normal$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.(php|js) :call DeleteTrailingWS()


" For when you forget to sudo.. Really Write the file.
" cmap w!! w !sudodo tee % >/dev/null

