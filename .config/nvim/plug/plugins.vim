" Python client kinda shit
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" Plug
call plug#begin(stdpath('data') . '/plugged')

  Plug 'mhinz/vim-startify'

  Plug 'dracula/vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'ryanoasis/vim-devicons'

  " Plug 'majutsushi/tagbar'
  Plug 'liuchengxu/vista.vim'

  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'reedes/vim-pencil'

  Plug 'tmhedberg/SimpylFold'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'w0rp/ale'
  "
  Plug 'sheerun/vim-polyglot'

  Plug 'Shougo/context_filetype.vim'
  Plug 'tyru/caw.vim'

  Plug 'tpope/vim-fugitive'
  Plug 'rhysd/git-messenger.vim'

  Plug 'marcweber/vim-addon-mw-utils'
  " Plug 'garbas/vim-snipmate'
  " Plug 'SirVer/ultisnips'
  Plug 'mlaursen/vim-react-snippets'
  " Plug 'tomtom/tlib_vim'
  " Plug 'grvcoelho/vim-javascript-snippets'
  Plug 'honza/vim-snippets'

  " Plug 'scrooloose/nerdtree' |
        "\ Plug 'Xuyuanp/nerdtree-git-plugin' |
        "\ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  " Plug 'vim-ctrlspace/vim-ctrlspace'

  set rtp+=~/.fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Plug 'terryma/vim-multiple-cursors'

  Plug 'tpope/vim-surround'

  Plug 'Lokaltog/vim-easymotion'

  " Plug 'kshenoy/vim-signature'  

  Plug 'kana/vim-repeat'

  Plug 'vim-scripts/argtextobj.vim'

  Plug 'liuchengxu/vim-which-key'

  Plug 'metakirby5/codi.vim'

  Plug 'voldikss/vim-floaterm'

  Plug 'mattn/emmet-vim'
  Plug 'ap/vim-css-color'
  Plug 'posva/vim-vue'
  Plug 'digitaltoad/vim-pug'

  " Plug 'gabrielelana/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  Plug 'airblade/vim-rooter'

  " Plug 'lyokha/vim-xkbswitch'

  Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

  " Plug 'Galooshi/vim-import-js'

  Plug 'kevinhwang91/rnvimr'

  Plug 'jiangmiao/auto-pairs'

  " Plug 'Valloric/MatchTagAlways'
  " Plug 'justinmk/vim-matchparenalways'

  " Plug 'ludovicchabant/vim-gutentags'
  Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

  Plug 'Yggdroot/indentLine'

  " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

  Plug 'mboughaba/i3config.vim'

  Plug 'blindFS/vim-taskwarrior'

  " Plug 'codota/tabnine-vim'

  " Plug 'khzaw/vim-conceal'

  " Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

  " Plug 'puremourning/vimspector'

  " Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

  Plug 'lervag/vimtex'

  " Plug 'amerlyq/nou.vim'

  " Plug 'tpope/vim-vinegar'

  " Plug 'lambdalisue/fern.vim'
  "   Plug 'lambdalisue/fern-hijack.vim'
  "   Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'
  "   Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  "   Plug 'lambdalisue/fern-git-status.vim'
  "   Plug 'lambdalisue/fern-mapping-git.vim'
  "   Plug 'LumaKernel/fern-mapping-fzf.vim'

  Plug 'kana/vim-textobj-user'
    Plug 'Chun-Yang/vim-textobj-chunk'
    Plug 'kana/vim-textobj-entire'
    Plug 'coachshea/vim-textobj-markdown'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'reedes/vim-textobj-sentence'

  " Plug 'romgrk/barbar.nvim'

  Plug 'junegunn/vim-peekaboo'

  Plug 'reedes/vim-wheel'

  Plug 'tommcdo/vim-exchange'

  Plug 'liuchengxu/vim-clap'

  Plug 'kovetskiy/sxhkd-vim'

  " Plug 'masukomi/vim-markdown-folding'
  Plug 'plasticboy/vim-markdown'

  Plug 'vim-scripts/restore_view.vim'

  " Plug 'luochen1990/rainbow'

  Plug 'psf/black', { 'branch': 'stable' }

  Plug 'jparise/vim-graphql'

  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  Plug 'AndrewRadev/tagalong.vim'

  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
