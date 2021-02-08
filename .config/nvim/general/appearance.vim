set number
set relativenumber
set nowrap
" " If I need wrapping
" set wrap linebreak nolist
set list
set listchars=tab:▸\ ,trail:⋅
" set background=dark
set cc=81
" au BufWinEnter * let w:m2=matchadd('CocListBgRed', '\%>' . 80 . 'v.\+', -1)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
  set termguicolors
endif
set guifont=droidsansmono\ nerd\ font\ 11
set guicursor+=a:blinkon1
colorscheme dracula

set cursorline
hi CursorLine guibg=#343746

" " No search highlight (cuz easymotion)
" set nohlsearch
