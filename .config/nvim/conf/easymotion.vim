let g:EasyMotion_do_mapping = 0 " Disable default mappings

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


nmap <leader><leader>s <Plug>(easymotion-sn)

" Bidirectional & within line 't' motion
" omap t <Plug>(easymotion-bd-tl)

" HJKL motions
nmap <leader><leader>h <Plug>(easymotion-linebackward)
nmap <leader><leader>j <Plug>(easymotion-j)
nmap <leader><leader>k <Plug>(easymotion-k)
nmap <leader><leader>l <Plug>(easymotion-lineforward)

" nmap  / <Plug>(easymotion-sn)

nmap  <leader><leader>n <Plug>(easymotion-next)
nmap  <leader><leader>N <Plug>(easymotion-prev)
