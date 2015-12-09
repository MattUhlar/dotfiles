"=====Colorscheme and Appearance=====
colorscheme solarized
set background=dark
syntax on

" Show number lines on file
set number

" vim-airline statusline appears at all times
set laststatus=2

"=====Spacing=====
filetype plugin indent on
set expandtab 
set tabstop=4 
set shiftwidth=4  
set softtabstop=4" 
set backspace=indent,eol,start

"=====Folding=====

" toggle folds with spacebar
nnoremap <Space> za
" Set foreground color of folds
hi Folded ctermfg=247

"=====Plugins=====

" Vundle
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'sirver/ultisnips'
Plugin 'godlygeek/tabular'
Plugin 'henrik/vim-indexed-search'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'

" Snippets are seperate from the engine
Plugin 'honza/vim-snippets'

" Colorscheme
Plugin 'altercation/vim-colors-solarized'

filetype plugin indent on

"=====Custom Functions=====

" Fold all function, struct, and class bodies in a file [C/C++]
" NOTE: only works with brace-on-own-line style
"   ex: void foo()
"       {
"           bar();
"       }
function! FoldAll()
    let flags = 'W' " Do not wrap around EOF
    " Go to first line of file
    normal gg 
    " Go to opening brace of each function/class/struct
    while search('^{', flags)
        " Fold until closing brace
        normal zf%
    endwhile
endfunction
