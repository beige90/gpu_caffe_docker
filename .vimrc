syntax on
filetype on
set nocompatible

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set autoindent
set cindent

set bg=dark
set hlsearch
set incsearch
set ignorecase
set nowrapscan
set nobackup
set number
set ruler
set paste

set encoding=utf-8
set fencs=ucs-bom,utf-8,euc-kr,latin1
set backspace=indent,eol,start

set history=1000

map w : w
map wq : wq
map q : q
map !q : !q
map <C-x> : nohl <CR>
map <space> : e 

map new : new

map <F2> : vs <CR>
map <F3> : sp <CR>
