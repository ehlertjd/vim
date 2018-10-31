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
Plugin 'lazywei/vim-matlab'
Plugin 'jalvesaq/Nvim-R'

call vundle#end()
filetype plugin indent on

:colorscheme moss

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set backupdir=~/.vim/backup//

set wildignore+=*/ext/*,*/build/*,*.zip
set wildignore+=*/build-*/*
set wildignore+=*/bin/*,*/node_modules/*

set number relativenumber

syntax on
set backspace=indent,eol,start

" Python
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal tabstop=8
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4

" bash/sh
autocmd Filetype sh setlocal expandtab
autocmd Filetype sh setlocal tabstop=8 
autocmd Filetype sh setlocal softtabstop=4 
autocmd Filetype sh setlocal shiftwidth=4 

" json
autocmd Filetype json setlocal expandtab
autocmd Filetype json setlocal tabstop=8
autocmd Filetype json setlocal softtabstop=4
autocmd Filetype json setlocal shiftwidth=4

" YouCompleteMe
let g:ycm_semantic_triggers = { 'r' : ['::', '$', '@'] }

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

" matlab config
autocmd FileType matlab setlocal expandtab
autocmd FileType matlab setlocal tabstop=4
autocmd FileType matlab setlocal softtabstop=4
autocmd FileType matlab setlocal shiftwidth=4
autocmd FileType matlab let g:ycm_seed_identifiers_with_syntax = 1

" yaml config
autocmd FileType yaml setlocal expandtab
autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2

" javascript config
autocmd FileType javascript setlocal expandtab
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2

" keyboard shortcuts
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

nnoremap <leader>jd :YcmCompleter GoTo<CR>

