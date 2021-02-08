" , as a leader key
let mapleader = " "
let g:mapleader = " "

" create file
nmap gF :e <cfile><cr>

" Switch spell check
nmap <silent> <leader>ps :set spell!<CR>

" Quick save | Match cd to the current buffer | Clear search highlight
nmap <leader>w :w!<cr>
nmap <leader>cd :cd %:p:h<CR>:pwd<CR>
nmap <leader>e :e!<cr>
nmap <silent> <leader>, :noh<cr>

" Close buffer
nmap <silent> Q :bd<CR>

" no Ex or cmdmode cuz fuck you
map q: <Nop>

" Quickly edit/reload the vim configs
nmap <silent> <leader>ve :e $MYVIMRC<CR>
nmap <silent> <leader>vs :so $MYVIMRC<CR>

" Easy window navigation
" map <A-h> <C-w>h
" map <A-j> <C-w>j
" map <A-k> <C-w>k
" map <A-l> <C-w>l

" Wrap movements
" nnoremap j gj
" nnoremap k gk
" nnoremap $ g$
" nnoremap 0 g0
" vnoremap j gj
" vnoremap k gk
" vnoremap $ g$
" vnoremap 0 g0

" ; as : (cuz f)
" nnoremap ; :
" vnoremap ; :

" Easy window resize
nmap <silent> <A-Up> :resize +2<CR>
nmap <silent> <A-Down> :resize -2<CR>
nmap <silent> <A-Left> :vertical resize -2<CR>
nmap <silent> <A-Right> :vertical resize +2<CR>

" Toogle visualize tabs and EOL
nmap <leader>pl :set list!<CR>

" Auto center on matched string
noremap n nzz
noremap N Nzz

" Change keyboard layout shortcut
nnoremap <silent> <A-l> :ToggleKeymap<CR>
inoremap <silent> <A-l> <C-^>

" System Clipboard <3
noremap <C-c> "+


" Conceal Control
nmap <silent> <leader>pc :ToggleConceal<CR>

" Wrap control
nmap <silent> <leader>pw :ToggleWrap<CR>

" <C-w> to <A-w>
nnoremap <A-w> <C-w>
vnoremap <A-w> <C-w>



" Navigating w/ guides
" inoremap \\ <Esc>/<++><Enter>"_c4l
" vnoremap \\ <Esc>/<++><Enter>"_c4l
nnoremap \\ <Esc>/<++><Enter>"_c4l
