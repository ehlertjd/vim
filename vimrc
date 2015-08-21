set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugin Bundles
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'marijnh/tern_for_vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end()
filetype plugin indent on

:colorscheme moss

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set wildignore+=*/ext/*,*/build/*,*.zip
set wildignore+=*/build-*/*
set wildignore+=*/bin/*,*/node_modules/*

syntax on
set backspace=indent,eol,start


" Ctrl-P Config
let g:ctrlp_clear_cache_on_exit = 0

" Airline Config
set laststatus=2
