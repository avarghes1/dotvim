" get rid of the scrollbars menu and other useless stuff
set guioptions-=T
set guioptions-=L
set guioptions-=R
set guioptions-=b

" change the font color for nerd tree to something a bit more soothing
hi Directory guifg=#AFAFFF

" change line number color
hi lineNr guifg=#999999

if has("mac")
    set guifont=Andale\ Mono:h12
elseif has("unix")
    set guifont=Andale\ Mono\ 10
endif
