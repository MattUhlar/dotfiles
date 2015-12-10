" General Vim settings
colorscheme solarized
set background=dark
syntax on
set number
set backspace=indent,eol,start

" vim-airline statusline appears at all times
set laststatus=2

" Spacing
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Vundle
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
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

" Colorschemes
Plugin 'altercation/vim-colors-solarized'

filetype plugin indent on
