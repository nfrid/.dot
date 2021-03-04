require('vutils')

exe([[
  filetype plugin indent on
  syntax on
  set hidden
]], true)

exe([[
  set formatoptions-=cro
  set smartindent
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  au BufRead,BufNewFile *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  set foldenable
  set foldlevel=99
  set foldmethod=indent
  set ignorecase
  set smartcase
  set mouse=a
  set clipboard=unnamed
]], true)

exe([[
  set nospell spelllang=en_us,ru_yo
  set keymap=russian-jcukenwin
  set iminsert=0
  set imsearch=-1
]], true)

exe([[
  set number
  set relativenumber
  set nowrap
  set noshowmode
  set signcolumn=yes
]], true)

exe([[
  set list
  set listchars=tab:▸\ ,trail:⋅

  set cc=81
]], true)

exe([[
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  if (has("termguicolors"))
    set termguicolors
  endif
]], true)

exe([[
  set guifont=droidsansmono\ nerd\ font\ 11
  set guicursor+=a:blinkon1
]], true)

vim.g.vimsyn_embed = 'l'

-- Custom commands and stuff

exe([[
  function! ToggleConceal() abort
    if &conceallevel ==# 2
      setlocal conceallevel=0
    else
      setlocal conceallevel=2
    endif
  endfunction
]], true)

exe([[
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
]], true)

exe([[
  function! ToggleKeymap() abort
    if &iminsert ==# ''
      setlocal iminsert=1
    else
      setlocal iminsert=0
    endif
  endfunction
]], true)

cmd("autocmd BufReadPost *.zsh,.zshrc set filetype=sh")

-- Mappings

vim.mapleader = ' '
vim.g.mapleader = ' '

map('n', '<SPACE>', '<NOP>')
map('n', '<tab>', '<CMD>bp<CR>')
map('n', '<s-tab>', '<CMD>bn<CR>')

map('n', 'gF', ':e <cfile><CR>')

-- map('n', '<leader>w', ':w!<CR>')
map('n', '<Leader>,', '<CMD>lua vim.o.hls = not vim.o.hls<CR>')
map('n', 'Q', ':bd<CR>')
map('n', '<leader>cd', ':cd %:h<CR>')

map('n', '<leader>ve', ':e $MYVIMRC<CR>')
map('n', '<leader>vs', ':so $MYVIMRC<CR>')

map('n', '<A-l>', ':call ToggleKeymap()<CR>')
map('i', '<A-l>', '<C-^>')

map('n', '<leader>ps', ':set spell!<CR>')
map('n', '<leader>pc', ':call ToggleConceal()<CR>')
map('n', '<leader>pw', ':call ToggleWrap()<CR>')

map('', '<A-w>', '<C-w>')

map('n', '\\\\', '<Esc>/<++><Enter>"_c4l')

cmd('inoremap <expr> <C-j>   pumvisible() ? "\\<C-n>" : "\\<C-j>"')
cmd('inoremap <expr> <C-k>   pumvisible() ? "\\<C-p>" : "\\<C-k>"')
cmd('inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"')
cmd('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')

-- Plugins & mixed plugin configs

require('plugins')

exe([[
  hi def link rainbowcol1 DraculaGreen
  hi def link rainbowcol2 DraculaPink
  hi def link rainbowcol3 DraculaOrange
  hi def link rainbowcol4 DraculaPurple
  hi def link rainbowcol5 DraculaYellow
  hi def link rainbowcol6 DraculaCyan
  hi def link rainbowcol7 DraculaRed
]], true)
