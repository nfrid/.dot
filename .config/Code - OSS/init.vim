set termguicolors

set ignorecase
set smartcase

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set hidden
set noswapfile
set nofoldenable

let mapleader = " "

command! W :w

nmap <silent> <SPACE> <NOP>

nmap <silent> gF :e <cfile><CR>

nmap <silent> <leader>w :w<CR>

nmap <silent> <leader>cd :cd %:h<CR>
nmap <silent> <leader>cp :let @+ = expand("%:p:h")<CR>

nmap <silent> Q :q<CR>

nmap <silent> > >>
nmap <silent> < <<

map <silent> <A-w> <C-w>

map <Leader>/ :nohlsearch<CR>

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

call plug#begin(stdpath('data') . '/plugged')

Plug 'kevinhwang91/nvim-hlslens'

Plug 'tpope/vim-surround'
Plug 'kana/vim-repeat'

Plug 'tversteeg/registers.nvim'

Plug 'machakann/vim-highlightedyank'

Plug 'asvetliakov/vim-easymotion'

call plug#end()

let g:highlightedyank_highlight_duration = 250



" let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Set keyshit
let g:EasyMotion_keys='ASDFJKL;GHQWERUIPTYZXCVBNM'
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper=1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1


" Mappings

" `s{char}{char}{label}`
nmap s <Plug>(easymotion-s2)
omap s <Plug>(easymotion-s2)


nmap <leader>s <Plug>(easymotion-sn)

" Bidirectional & within line 't' motion
" omap t <Plug>(easymotion-bd-tl)

" HJKL motions
nmap <leader>h <Plug>(easymotion-linebackward)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
nmap <leader>l <Plug>(easymotion-lineforward)

" nmap  / <Plug>(easymotion-sn)

nmap <leader>n <Plug>(easymotion-next)
nmap <leader>N <Plug>(easymotion-prev)
