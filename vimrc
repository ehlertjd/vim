set nocompatible
filetype off

" Plugin Bundles
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'marijnh/tern_for_vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive', { 'tag': 'v2.5' }
Plug 'jelera/vim-javascript-syntax'
Plug 'fatih/vim-go'
Plug 'valloric/youcompleteme'
Plug 'lazywei/vim-matlab'
Plug 'jalvesaq/Nvim-R'
Plug 'csexton/trailertrash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'srcery-colors/srcery-vim'

call plug#end()
filetype plugin indent on

set termguicolors
colorscheme srcery

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

set list
set listchars=tab:▸\ 

" Set mapleader
let mapleader = "\<Space>"
nmap \ <Space>

" Global scripts
source ~/.vim/scripts/global.vim

" Python
autocmd FileType python setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType python autocmd BufWritePre <buffer> :TrailerTrim
autocmd FileType python source ~/.vim/scripts/python.vim

" bash/sh
autocmd Filetype sh setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4

" json
autocmd Filetype json setlocal expandtab tabstop=8 softtabstop=4 shiftwidth=4
autocmd FileType json autocmd BufWritePre <buffer> :TrailerTrim

" YouCompleteMe
let g:ycm_semantic_triggers = { 'r' : ['::', '$', '@'] }

" Ctrl-P Config
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = 'node_modules\|__pycache__\|DS_Store\|git\|vendor\|dist\|build\|pkgdata\|*.pyc'

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
autocmd FileType matlab setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType matlab let g:ycm_seed_identifiers_with_syntax = 1

" yaml config
autocmd FileType yaml setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType yaml autocmd BufWritePre <buffer> :TrailerTrim

" javascript config
autocmd FileType javascript setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript autocmd BufWritePre <buffer> :TrailerTrim

" keyboard shortcuts
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>s2 :setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2<CR>
nmap <leader>s4 :setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4<CR>

nnoremap <leader>jd :YcmCompleter GoTo<CR>

