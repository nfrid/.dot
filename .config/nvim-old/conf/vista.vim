" Settings

let g:vista_sidebar_keepalt = 1
if exists('*nvim_open_win')
  let g:vista_echo_cursor_strategy = 'floating_win'
endif
let g:vista_update_on_text_changed = 1
let g:vista_stay_on_open = 0
let g:vista_icon_indent = ["╰─ ", "├─ "]
let g:vista_default_executive = 'coc'


" Mappings

nmap <silent> <leader>; :Vista!!<CR>
nmap <silent> <leader>ft :Vista finder coc<CR>

" In Vista
autocmd FileType vista nmap <buffer> l <CR>
" autocmd FileType vista nmap <buffer> <silent> h :Vista!<CR>
