" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
" let g:floaterm_wintitle=0
let g:floaterm_autoclose=1


" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guifg=#6272A4


" Mappings
let g:floaterm_keymap_toggle = '<leader>tt'
let g:floaterm_keymap_prev   = '<leader>tk'
let g:floaterm_keymap_next   = '<leader>tj'
let g:floaterm_keymap_new    = '<leader>tn'
let g:floaterm_keymap_kill   = '<leader>td'

" nmap <C-P> :FloatermNew ranger<CR>
nmap <C-G> :FloatermNew lazygit<CR>
