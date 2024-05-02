set nocompatible

set background=dark

syntax on
set nowrap
set scrolloff=8
set sidescrolloff=3
set sidescroll=10

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set number relativenumber 
set ruler 
set showcmd
set cursorline
set showmatch
set noerrorbells
set novisualbell

set incsearch
set hlsearch
set smartcase

set history=50
set noswapfile

set foldmethod=syntax

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

inoremap jk <Esc>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType c map <buffer> <F8> :w<CR>:make %< && ./%<<CR>
autocmd FileType c imap <buffer> <F8> :w<CR>:make %< && ./%<<CR>

autocmd FileType javascript map <buffer> <F9> :w<CR>:exec '!node' shellescape(@%, 1)<CR>
autocmd FileType javascript imap <buffer> <F9> <esc>:w<CR>:exec '!node' shellescape(@%, 1)<CR>

nnoremap <esc><esc> :silent! nohls<cr>
