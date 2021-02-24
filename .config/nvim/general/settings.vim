" Fundamental settings
" set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
" set fileformat=unix
set fileformats=unix,dos,mac
filetype on
filetype plugin on
filetype plugin indent on
syntax on
set hidden

" Some useful settings
" set iskeyword+=-
set formatoptions-=cro
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
au BufRead,BufNewFile *.py
      \ setlocal tabstop=4
      \ softtabstop=4
      \ shiftwidth=4
set foldenable
set foldlevel=99
set foldmethod=indent
set ignorecase
set smartcase
set mouse=a
" default clipboard buffer is *
set clipboard=unnamed

" Spell checking and Russian support
set nospell spelllang=en_us,ru_yo
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

" For CoC
set nobackup
set nowritebackup
set updatetime=300
set cmdheight=2
set shortmess+=c
set signcolumn=yes

let g:vimsyn_embed= 'l'
