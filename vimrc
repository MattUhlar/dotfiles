"=====Colorscheme and Appearance=====

" Terminal uses 256 colors
set t_Co=256
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

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Change default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Display buffer list and prompt for number
map <leader>b :ls<CR>:b

"=====Plugins=====

" Vundle
set nocompatible

filetype off

<<<<<<< HEAD
set rtp+=~/.vim/bundle/Vundle.vim
=======
" Set rtp to location of vundle
set rtp+=~/.vim/bundle/vundle/
>>>>>>> ce3c48aa098834d4587e8455d4389c2084058f26
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
    execute "normal gg"
    " Go to opening brace of each function/class/struct
    while search('^{', flags)
        " Fold until closing brace
        execute "normal zf%"
    endwhile
endfunction
