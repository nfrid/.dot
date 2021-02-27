let g:startify_session_autoload = 1
let g:startify_update_oldfiles = 1
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 2
let g:startify_change_to_vcs_root = 1

" No .vim
let g:startify_session_dir = '~/.local/share/nvim/session'


" Mapping

" Open the startify buffer
nmap <leader>ss :Startify<CR>

" Save and close the current session
nmap <leader>Sq :SClose<CR>
nmap <leader>Sd :SDelete<CR>
nmap <leader>Sl :SLoad<CR>
nmap <leader>SS :SSave<CR>
