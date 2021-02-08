" Appearance

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#keymap#label = ''
let g:airline#extensions#keymap#default = 'us'
let g:airline#extensions#keymap#short_codes = {'russian-jcukenwin': 'ru'}
let g:airline_detect_spelllang=0
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


" Mappings

" Buffer switch
nmap <tab> :bn<CR>
nmap <S-tab> :bp<CR>

nmap <A-1> <Plug>AirlineSelectTab1
nmap <A-2> <Plug>AirlineSelectTab2
nmap <A-3> <Plug>AirlineSelectTab3
nmap <A-4> <Plug>AirlineSelectTab4
nmap <A-5> <Plug>AirlineSelectTab5
nmap <A-6> <Plug>AirlineSelectTab6
nmap <A-7> <Plug>AirlineSelectTab7
nmap <A-8> <Plug>AirlineSelectTab8
nmap <A-9> <Plug>AirlineSelectTab9
