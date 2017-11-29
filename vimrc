set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugin Bundles
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'marijnh/tern_for_vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'fatih/vim-go'
Plugin 'valloric/youcompleteme'

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

set number relativenumber

syntax on
set backspace=indent,eol,start

autocmd FileType python setlocal noexpandtab
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4

" Ctrl-P Config
let g:ctrlp_clear_cache_on_exit = 0

" Airline Config
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" vim-go config
set autowrite
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)

" keyboard shortcuts
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

