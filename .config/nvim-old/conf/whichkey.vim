" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <leader>? :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader>? :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" By default timeoutlen is 1000 ms
set timeoutlen=500

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Ignored mappings

" Single mappings
" let g:which_key_map['n'] = [ 'NERDTreeToggle', 'NERDTree' ]
let g:which_key_map[','] = [ 'noh', 'Clear highlighting' ]
" let g:which_key_map['TAB'] = [ 'bn', 'Cycle buffers' ]       " Dublicate :(
let g:which_key_map[';'] = [ ':Vista', 'open tags by vista' ]
let g:which_key_map['NUM'] = 'jump to NUM tab'
let g:which_key_map['w'] = 'write buffer'
let g:which_key_map['e'] = 'reedit buffer'
let g:which_key_map['cd'] = 'set buffer dir as current'

" Group mappings

" t - term (floaterm incl)
let g:which_key_map.t = {
    \ 'name' : '+term' ,
    \ 't' : 'toggle' ,
    \ 'n' : 'new' ,
    \ 'j' : 'next' ,
    \ 'k' : 'prev' ,
    \ 'd' : 'delete' ,
    \ }

" d - dot files
let g:which_key_map.d = {
      \ 'name' : '+dot' ,
      \ 'a' : 'add %' ,
      \ 's' : 'status' ,
      \ 'u' : 'untrack' ,
      \ }

" SPC - easymotion
let g:which_key_map[' '] = {
      \ 'name' : '+easymotion' ,
      \ 'h' : 'goto inline backward' ,
      \ 'j' : 'goto line down' ,
      \ 'k' : 'goto line up' ,
      \ 'l' : 'goto inline forward' ,
      \ 'n' : 'next item (ezm search)' ,
      \ 'N' : 'previous item (ezm search)' ,
      \ }

" v - vim and stuff
let g:which_key_map.v = {
      \ 'name' : '+vim' ,
      \ 'e' : 'edit myvimrc' ,
      \ 's' : 'source myvimrc' ,
      \ }

" c - CoC
let g:which_key_map.c = {
      \ 'name' : '+coc' ,
      \ 'c' : 'restart' ,
      \ 'a' : {
            \ 'name' : '+action' ,
            \ 'a' : 'for whole buffer' ,
            \ 's' : 'for selected' ,
            \ } ,
      \ 'q' : 'auto fix current line' ,
      \ 'r' : 'rename' ,
      \ 'n' : 'next error' ,
      \ 'N' : 'prev error' ,
      \ 'g' : {
            \ 'name' : '+coc go' ,
            \ 'd' : 'definition' ,
            \ 'i' : 'implementation' ,
            \ 'y' : 'type definition' ,
            \ 'r' : 'references' ,
            \ } ,
      \ 'd': 'which_key_ignore' ,
      \ }

" f - fuzzy f
let g:which_key_map.f = {
      \ 'name' : '+fuzzy' ,
      \ 'f' : 'fzf w/ preview' ,
      \ 'r' : 'Rg (content srch)' ,
      \ 'm' : 'marks' ,
      \ 'b' : 'buffers' ,
      \ 't' : 'tags by vista' ,
      \ 'g' : 'git grep' ,
      \ }

" p - appearance (orig. - Pencil)
let g:which_key_map.p = {
      \ 'name' : '+appearance' ,
      \ 'p' : 'pencil' ,
      \ 'g' : 'goyo' ,
      \ 'l' : 'list (tab/endl display)' ,
      \ 's' : 'spell check' ,
      \ 'h' : 'limelight (highlight current paragraph)' ,
      \ 'c' : 'conceal'
      \ }

" s - start something
let g:which_key_map.s = {
      \ 'name' : '+start' ,
      \ 's' : 'startify' ,
      \ }

" l - CocLists
let g:which_key_map.l = {
      \ 'name' : '+coclist' ,
      \ 'l' : 'custom' ,
      \ 'y' : 'yanks' ,
      \ 'f' : 'floaterms' ,
      \ 'c' : 'coc cmds' ,
      \ 'a' : 'coc actions' ,
      \ 'b' : 'buffers' ,
      \ ';' : 'resume previous' ,
      \ 'd' : 'diagnostic' ,
      \ }

" g - git (fugitive as well)
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'g' : 'git' ,
      \ 'a' : 'add %' ,
      \ 'A' : 'add .' ,
      \ 'c' : 'commit' ,
      \ 'p' : 'pull' ,
      \ 'P' : 'push' ,
      \ 'd' : 'diff' ,
      \ 'f' : 'diffget from left' ,
      \ 'h' : 'diffget from right' ,
      \ 's' : 'status' ,
      \ 'l' : 'log' ,
      \ 'r' : 'remove' ,
      \ 'b' : 'blame' ,
      \ 'B' : 'browse' ,
      \ 'v' : 'view commits' ,
      \ 'V' : 'view commits for current buffer' ,
      \ 'm' : 'commit message' ,
      \ }

" r - render (prewiev and stuff)
let g:which_key_map.r = {
      \ 'name' : '+render' ,
      \ 'm' : 'md prewiew' ,
      \ 'M' : 'stop md preview' ,
      \ 'w' : 'web live server (Bracey)' ,
      \ 'W' : 'stop web life server' ,
      \ }

" S - Session
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'q' : 'quit' ,
      \ 'd' : 'delete' ,
      \ 'l' : 'load' ,
      \ 'S' : 'save' ,
      \ }

" i - imports (js)
let g:which_key_map.i = {
      \ 'name' : '+import' ,
      \ 'f' : 'file' ,
      \ 'F' : 'file list' ,
      \ 'c' : 'fix' ,
      \ 's' : 'sort' ,
      \ 'p' : 'prompt' ,
      \ 'u' : 'usage' ,
      \ 'g' : 'def' ,
      \ 'G' : 'def list' ,
      \ }

" w - wiki
let g:which_key_map.w = {
      \ 'name': '+wiki' ,
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


nnoremap <silent> <localleader> :silent <c-u> :silent WhichKey '\'<CR>
vnoremap <silent> <localleader> :silent <c-u> :silent WhichKeyVisual '\'<CR>

" call which_key#register('\', "g:which_key_map")


" Not My Property But It Looks Good For Me (NMPBILGFM)
" " g is for git
" let g:which_key_map.g = {
  "      \ 'name' : '+git' ,
  "      \ 'a' : [':Git add .'                        , 'add all'],
  "      \ 'A' : [':Git add %'                        , 'add current'],
  "      \ 'b' : [':Git blame'                        , 'blame'],
  "      \ 'B' : [':GBrowse'                          , 'browse'],
  "      \ 'c' : [':Git commit'                       , 'commit'],
  "      \ 'd' : [':Git diff'                         , 'diff'],
  "      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
  "      \ 'g' : [':GGrep'                            , 'git grep'],
  "      \ 'G' : [':Gstatus'                          , 'status'],
  "      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
  "      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
  "      \ 'i' : [':Gist -b'                          , 'post gist'],
  "      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
  "      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
  "      \ 'l' : [':Git log'                          , 'log'],
  "      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
  "      \ 'p' : [':Git push'                         , 'push'],
  "      \ 'P' : [':Git pull'                         , 'pull'],
  "      \ 'r' : [':GRemove'                          , 'remove'],
  "      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
  "      \ 'S' : [':!git status'                      , 'status'],
  "      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
  "      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
  "      \ 'v' : [':GV'                               , 'view commits'],
  "      \ 'V' : [':GV!'                              , 'view buffer commits'],
  "      \ }


" All The Default Keys (probably)
"g {{
  " nnoremap <silent><nowait> [G] :<c-u>LeaderGuide "g"<CR>
  " nnoremap <silent><nowait> [G] :<c-u>WhichKey 'g'<cr>
  " nmap g [G]
  " let g:which_key_g= {}
  " let g:which_key_g['<C-G>'] = ['call feedkeys("g\<c-g>", "n")', 'show cursor info']
  " nnoremap g<c-g> g<c-g>
  " let g:which_key_g['&'] = ['call feedkeys("g&", "n")', 'repeat last ":s" on all lines']
  " nnoremap g& g&
  "
  " let g:which_key_g["'"] = ['call feedkeys("g' . "'" . '", "n")', 'jump to mark']
  " nnoremap g' g'
  " let g:which_key_g['`'] = ['call feedkeys("g' . '`' . '", "n")', 'jump to mark']
  " nnoremap g` g`
  "
  " let g:which_key_g['+'] = ['call feedkeys("g+", "n")', 'newer text state']
  " nnoremap g+ g+
  " let g:which_key_g['-'] = ['call feedkeys("g-", "n")', 'older text state']
  " nnoremap g- g-
  " let g:which_key_g[','] = ['call feedkeys("g,", "n")', 'newer position in change list']
  " nnoremap g, g,
  " let g:which_key_g[';'] = ['call feedkeys("g;", "n")', 'older position in change list']
  " nnoremap g; g;
  " let g:which_key_g['@'] = ['call feedkeys("g@", "n")', 'call operatorfunc']
  " nnoremap g@ g@
  "
  " let g:which_key_g['#'] = ['call feedkeys("\<Plug>(incsearch-nohl-g#)")', 'search under cursor backward']
  " let g:which_key_g['*'] = ['call feedkeys("\<Plug>(incsearch-nohl-g*)")', 'search under cursor forward']
  " let g:which_key_g['/'] = ['call feedkeys("\<Plug>(incsearch-stay)")', 'stay incsearch']
  " let g:which_key_g['$'] = ['call feedkeys("g$", "n")', 'go to rightmost character']
  " nnoremap g$ g$
  " let g:which_key_g['<End>'] = ['call feedkeys("g$", "n")', 'go to rightmost character']
  " nnoremap g<End> g<End>
  " let g:which_key_g['0'] = ['call feedkeys("g0", "n")', 'go to leftmost character']
  " nnoremap g0 g0
  " let g:which_key_g['<Home>'] = ['call feedkeys("g0", "n")', 'go to leftmost character']
  " nnoremap g<Home> g<Home>
  " let g:which_key_g['e'] = ['call feedkeys("ge", "n")', 'go to end of previous word']
  " nnoremap ge ge
  " let g:which_key_g['<'] = ['call feedkeys("g<", "n")', 'last page of previous command output']
  " nnoremap g< g<
  " let g:which_key_g['f'] = ['call feedkeys("gf", "n")', 'edit file under cursor']
  " nnoremap gf gf
  " " let g:which_key_g['F'] = ['call feedkeys("gF", "n")', 'edit file under cursor(jump to line after name)']
  " " nnoremap gF gF
  " let g:which_key_g['j'] = ['call feedkeys("gj", "n")', 'move cursor down screen line']
  " nnoremap gj gj
  " let g:which_key_g['k'] = ['call feedkeys("gk", "n")', 'move cursor up screen line']
  " nnoremap gk gk
  " let g:which_key_g['u'] = ['call feedkeys("gu", "n")', 'make motion text lowercase']
  " nnoremap gu gu
  " let g:which_key_g['E'] = ['call feedkeys("gE", "n")', 'end of previous word']
  " nnoremap gE gE
  " let g:which_key_g['U'] = ['call feedkeys("gU", "n")', 'make motion text uppercase']
  " nnoremap gU gU
  " let g:which_key_g['H'] = ['call feedkeys("gH", "n")', 'select line mode']
  " nnoremap gH gH
  " let g:which_key_g['h'] = ['call feedkeys("gh", "n")', 'select mode']
  " nnoremap gh gh
  " let g:which_key_g['I'] = ['call feedkeys("gI", "n")', 'insert text in column 1']
  " nnoremap gI gI
  " let g:which_key_g['i'] = ['call feedkeys("gi", "n")', "insert text after '^ mark"]
  " nnoremap gi gi
  " let g:which_key_g['J'] = ['call feedkeys("gJ", "n")', 'join lines without space']
  " nnoremap gJ gJ
  " let g:which_key_g['N'] = ['call feedkeys("gN", "n")', 'visually select previous match']
  " nnoremap gN gN
  " let g:which_key_g['n'] = ['call feedkeys("gn", "n")', 'visually select next match']
  " nnoremap gn gn
  " let g:which_key_g['Q'] = ['call feedkeys("gQ", "n")', 'switch to Ex mode']
  " nnoremap gQ gQ
  " let g:which_key_g['q'] = ['call feedkeys("gq", "n")', 'format Nmove text']
  " nnoremap gq gq
  " let g:which_key_g['R'] = ['call feedkeys("gR", "n")', 'enter VREPLACE mode']
  " nnoremap gR gR
  " let g:which_key_g['T'] = ['call feedkeys("gT", "n")', 'previous tag page']
  " nnoremap gT gT
  " let g:which_key_g['t'] = ['call feedkeys("gt", "n")', 'next tag page']
  " nnoremap gt gt
  " let g:which_key_g[']'] = ['call feedkeys("g]", "n")', 'tselect cursor tag']
  " nnoremap g] g]
  " let g:which_key_g['^'] = ['call feedkeys("g^", "n")', 'go to leftmost no-white character']
  " nnoremap g^ g^
  " let g:which_key_g['_'] = ['call feedkeys("g_", "n")', 'go to last char']
  " nnoremap g_ g_
  " let g:which_key_g['~'] = ['call feedkeys("g~", "n")', 'swap case for Nmove text']
  " nnoremap g~ g~
  " let g:which_key_g['a'] = ['call feedkeys("ga", "n")', 'print ascii value of cursor character']
  " nnoremap ga ga
  " let g:which_key_g['g'] = ['call feedkeys("gg", "n")', 'go to line N']
  " nnoremap gg gg
  " let g:which_key_g['m'] = ['call feedkeys("gm", "n")', 'go to middle of screenline']
  " nnoremap gm gm
  " let g:which_key_g['o'] = ['call feedkeys("go", "n")', 'goto byte N in the buffer']
  " nnoremap go go
  " let g:which_key_g.s = ['call feedkeys("gs", "n")', 'sleep N seconds']
  " nnoremap gs gs
  " let g:which_key_g['v'] = ['call feedkeys("gv", "n")', 'reselect the previous Visual area']
  " nnoremap gv gv
  " let g:which_key_g['<C-]>'] = ['call feedkeys("g<c-]>", "n")', 'jump to tag under cursor']
  " nnoremap g<c-]> g<c-]>
  " " let g:which_key_g['d'] = ['call SpaceVim#mapping#gd()', 'goto definition']
  " " call SpaceVim#mapping#def('nnoremap <silent>', 'gd', ':call SpaceVim#mapping#gd()<CR>', 'Goto declaration', '')
" call which_key#register('g', "g:which_key_g")
"}}

"z{{
    " nnoremap <silent><nowait> [Z] :<c-u>WhichKey "z"<CR>
    " nmap z [Z]
    " let g:which_key_z = {}
    " let g:which_key_z['<CR>'] = ['call feedkeys("z\<CR>", "n")', 'cursor line to top']
    " nnoremap z<CR> z<CR>
    " let g:which_key_z['+'] = ['call feedkeys("z+", "n")', 'cursor to screen top line N']
    " nnoremap z+ z+
    " let g:which_key_z['-'] = ['call feedkeys("z-", "n")', 'cursor to screen bottom line N']
    " nnoremap z- z-
    " let g:which_key_z['^'] = ['call feedkeys("z^", "n")', 'cursor to screen bottom line N']
    " nnoremap z^ z^
    " let g:which_key_z['.'] = ['call feedkeys("z.", "n")', 'cursor line to center']
    " nnoremap z. z.
    " let g:which_key_z['='] = ['call feedkeys("z=", "n")', 'spelling suggestions']
    " nnoremap z= z=
    " let g:which_key_z['A'] = ['call feedkeys("zA", "n")', 'toggle folds recursively']
    " nnoremap zA zA
    " let g:which_key_z['C'] = ['call feedkeys("zC", "n")', 'close folds recursively']
    " nnoremap zC zC
    " let g:which_key_z['D'] = ['call feedkeys("zD", "n")', 'delete folds recursively']
    " nnoremap zD zD
    " let g:which_key_z['E'] = ['call feedkeys("zE", "n")', 'eliminate all folds']
    " nnoremap zE zE
    " let g:which_key_z['F'] = ['call feedkeys("zF", "n")', 'create a fold for N lines']
    " nnoremap zF zF
    " let g:which_key_z['G'] = ['call feedkeys("zG", "n")', 'mark good spelled(update internal-wordlist)']
    " nnoremap zG zG
    " let g:which_key_z['H'] = ['call feedkeys("zH", "n")', 'scroll half a screenwidth to the right']
    " nnoremap zH zH
    " let g:which_key_z['L'] = ['call feedkeys("zL", "n")', 'scroll half a screenwidth to the left']
    " nnoremap zL zL
    " let g:which_key_z['M'] = ['call feedkeys("zM", "n")', 'set `foldlevel` to zero']
    " nnoremap zM zM
    " let g:which_key_z['N'] = ['call feedkeys("zN", "n")', 'set `foldenable`']
    " nnoremap zN zN
    " let g:which_key_z['O'] = ['call feedkeys("zO", "n")', 'open folds recursively']
    " nnoremap zO zO
    " let g:which_key_z['R'] = ['call feedkeys("zR", "n")', 'set `foldlevel` to deepest fold']
    " nnoremap zR zR
    " let g:which_key_z['W'] = ['call feedkeys("zW", "n")', 'mark wrong spelled']
    " nnoremap zW zW
    " let g:which_key_z['X'] = ['call feedkeys("zX", "n")', 're-apply `foldleve`']
    " nnoremap zX zX
    " let g:which_key_z['a'] = ['call feedkeys("za", "n")', 'toggle a fold']
    " nnoremap za za
    " let g:which_key_z['b'] = ['call feedkeys("zb", "n")', 'redraw, cursor line at bottom']
    " nnoremap zb zb
    " let g:which_key_z['c'] = ['call feedkeys("zc", "n")', 'close a fold']
    " nnoremap zc zc
    " let g:which_key_z['d'] = ['call feedkeys("zd", "n")', 'delete a fold']
    " nnoremap zd zd
    " let g:which_key_z['e'] = ['call feedkeys("ze", "n")', 'right scroll horizontally to cursor position']
    " nnoremap ze ze
    " let g:which_key_z['f'] = ['call feedkeys("zf", "n")', 'create a fold for motion']
    " nnoremap zf zf
    " let g:which_key_z['g'] = ['call feedkeys("zg", "n")', 'mark good spelled']
    " nnoremap zg zg
    " let g:which_key_z['h'] = ['call feedkeys("zh", "n")', 'scroll screen N characters to right']
    " nnoremap zh zh
    " let g:which_key_z['<Left>'] = ['call feedkeys("zh", "n")', 'scroll screen N characters to right']
    " nnoremap z<Left> zh
    " let g:which_key_z['i'] = ['call feedkeys("zi", "n")', 'toggle foldenable']
    " nnoremap zi zi
    " let g:which_key_z['j'] = ['call feedkeys("zj", "n")', 'move to start of next fold']
    " nnoremap zj zj
    " let g:which_key_z['J'] = ['call feedkeys("zjzx", "n")', 'move to and open next fold']
    " nnoremap zJ zjzx
    " let g:which_key_z['k'] = ['call feedkeys("zk", "n")', 'move to end of previous fold']
    " nnoremap zk zk
    " let g:which_key_z['K'] = ['call feedkeys("zkzx", "n")', 'move to and open previous fold']
    " nnoremap zK zkzx
    " let g:which_key_z['l'] = ['call feedkeys("zl", "n")', 'scroll screen N characters to left']
    " nnoremap zl zl
    " let g:which_key_z['<Right>'] = ['call feedkeys("zl", "n")', 'scroll screen N characters to left']
    " nnoremap z<Right> zl
    " let g:which_key_z['m'] = ['call feedkeys("zm", "n")', 'subtract one from `foldlevel`']
    " nnoremap zm zm
    " let g:which_key_z['n'] = ['call feedkeys("zn", "n")', 'reset `foldenable`']
    " nnoremap zn zn
    " let g:which_key_z['o'] = ['call feedkeys("zo", "n")', 'open fold']
    " nnoremap zo zo
    " let g:which_key_z['r'] = ['call feedkeys("zr", "n")', 'add one to `foldlevel`']
    " nnoremap zr zr
    " let g:which_key_z.s = ['call feedkeys("zs", "n")', 'left scroll horizontally to cursor position']
    " nnoremap zs zs
    " let g:which_key_z['t'] = ['call feedkeys("zt", "n")', 'cursor line at top of window']
    " nnoremap zt zt
    " let g:which_key_z['v'] = ['call feedkeys("zv", "n")', 'open enough folds to view cursor line']
    " nnoremap zv zv
    " let g:which_key_z['x'] = ['call feedkeys("zx", "n")', 're-apply foldlevel and do "zV"']
    " nnoremap zx zx
    " " smart scroll
    " let g:which_key_z['z'] = ['call feedkeys("zz", "n")', 'smart scroll']
    " nnoremap zz zz
" call which_key#register('z', "g:which_key_z")

"}}
