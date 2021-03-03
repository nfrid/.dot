" General

filetype plugin indent on
syntax on
set hidden

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
set clipboard=unnamed

set nospell spelllang=en_us,ru_yo
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1


" Appearance

set number
set relativenumber
set nowrap
set noshowmode
set signcolumn=yes

set list
set listchars=tab:▸\ ,trail:⋅

set cc=81

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
  set termguicolors
endif

set guifont=droidsansmono\ nerd\ font\ 11
set guicursor+=a:blinkon1

let g:vimsyn_embed= 'l'


" Commands

:command! ToggleConceal
      \ if &conceallevel ==# 2
      \ |   setlocal conceallevel=0
      \ | else
        \ |   setlocal conceallevel=2
        \ | endif

function! ToggleWrap() abort
  if &wrap ==# 'nowrap'
    setlocal wrap linebreak
    nnoremap <buffer> j gj
    nnoremap <buffer> k gk
  else
    setlocal nowrap
    nnoremap <buffer> j
    nnoremap <buffer> k
  endif
endfunction

:command! ToggleWrap call ToggleWrap()

:command! ToggleKeymap
      \ if &iminsert ==# ''
      \ |   setlocal iminsert=1
      \ | else
        \ |   setlocal iminsert=0
        \ | endif


" zsh to sh
autocmd BufReadPost *.zsh,.zshrc set filetype=sh


" yes

lua << EOF
require('vutils')

require('plugins')

vim.mapleader = ' '
vim.g.mapleader = ' '

map('n', '<SPACE>', '<NOP>')
map('n', '[b', '<CMD>bp<CR>')
map('n', ']b', '<CMD>bn<CR>')

map('n', '>', '>>')
map('n', '<', '<<')

map('n', 'gF', ':e <cfile><CR>')

map('n', '<leader>ps', ':set spell!<CR>')

map('n', '<leader>w', ':w!<CR>')
map('n', '<Leader>,', '<CMD>lua vim.o.hls = not vim.o.hls<CR>')
map('n', 'Q', ':bd<CR>')
map('n', '<leader>cd', ':cd %:h<CR>')

map('n', '<leader>ve', ':e $MYVIMRC<CR>')
map('n', '<leader>vs', ':so $MYVIMRC<CR>')

map('', 'n', 'nzz')
map('', 'N', 'Nzz')

map('n', '<A-l>', ':ToggleKeymap<CR>')
map('i', '<A-l>', '<C-^>')

map('', '<C-c>', '"+')

map('n', '<leader>pc', ':ToggleConceal<CR>')
map('n', '<leader>pw', ':ToggleWrap<CR>')

map('', '<A-w>', '<C-w>')

map('n', '\\\\', '<Esc>/<++><Enter>"_c4l')

cmd('inoremap <expr> <C-j>   pumvisible() ? "\\<C-n>" : "\\<C-j>"')
cmd('inoremap <expr> <C-k>   pumvisible() ? "\\<C-p>" : "\\<C-k>"')
cmd('inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"')
cmd('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')
EOF


" Dracula Treesitter

hi def link rainbowcol1 DraculaGreen
hi def link rainbowcol2 DraculaPink
hi def link rainbowcol3 DraculaOrange
hi def link rainbowcol4 DraculaPurple
hi def link rainbowcol5 DraculaYellow
hi def link rainbowcol6 DraculaCyan
hi def link rainbowcol7 DraculaRed
