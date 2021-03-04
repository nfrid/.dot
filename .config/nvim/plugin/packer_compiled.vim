" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/nf/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nf/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nf/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nf/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nf/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\nï\1\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\4\0'\3\2\0'\4\5\0B\0\4\1K\0\1\0003<C-\\><C-n><CMD>lua require\"FTerm\".toggle()<CR>\6t)<CMD>lua require\"FTerm\".toggle()<CR>\n<M-r>\6n\bmap\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/FTerm.nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["emmet-vim"] = {
    config = { "\27LJ\2\n_\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\n<A-m>\26user_emmet_leader_key\6i\20user_emmet_mode\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["format.nvim"] = {
    config = { "\27LJ\2\n†\a\0\0\6\0$\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\0024\3\3\0005\4 \0005\5\31\0=\5\5\4>\4\1\3=\3!\2B\0\2\0016\0\"\0'\2#\0+\3\2\0B\0\3\1K\0\1\0l      augroup Format\n      autocmd!\n      autocmd BufWritePost * FormatWrite\n      augroup END\n        \bexe\vpython\1\0\0\1\2\0\0\nblack\rmarkdown\1\0\3\16end_pattern\n^```$\18start_pattern\16^```python$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\bcpp\1\0\0\1\2\0\0\20clang-format -i\ncmake\1\0\0\1\2\0\0\20cmake-format -i\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\blua\1\0\0\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i \"s/[ \t]*$//\"\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\n±\1\0\0\5\0\n\0\0216\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0'\2\1\0'\3\b\0'\4\t\0B\0\4\1K\0\1\0\16:BLines<CR>\n<C-f>\f:Rg<CR>\14<leader>g\17:Buffers<CR>\14<leader>o\15:Files<CR>\14<leader>f\6n\bmap\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  indentLine = {
    config = { "\27LJ\2\nœ\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\4\0\0\rmarkdown\btex\rstartify\31indentLine_fileTypeExclude\f#44475a\25indentLine_color_gui\28indentLine_conceallevel\b‚ñè\20indentLine_char\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  kommentary = {
    config = { "\27LJ\2\n|\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\1\0\5\1\v6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\3Ä'\0\3\0L\0\2\0X\0\2Ä'\0\4\0L\0\2\0K\0\1\0\aru\aus\riminsert\abo\bvim\0º\2\1\0\4\0\20\0\0246\0\0\0'\2\1\0B\0\2\0025\1\3\0=\1\2\0003\1\4\0005\2\a\0005\3\6\0>\1\2\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\2=\2\5\0009\2\19\0B\2\1\1K\0\1\0\vstatus\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\0\1\0\2\ntheme\fdracula\18icons_enabled\2\foptions\flualine\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ne\0\3\v\1\4\0\v5\3\0\0006\4\1\0009\4\2\0049\4\3\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2A\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim≤\15\1\2\t\0=\0è\0016\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\0016\2\3\0'\3\5\0=\3\4\0026\2\6\0009\2\a\2)\3\0\0=\3\b\0026\2\t\0'\4\n\0B\2\2\0016\2\t\0'\4\v\0B\2\2\0016\2\t\0'\4\f\0B\2\2\0016\2\t\0'\4\r\0B\2\2\0016\2\6\0009\2\a\2)\3\1\0=\3\14\0026\2\6\0009\2\a\0025\3\16\0=\3\15\0026\2\6\0009\2\a\2'\3\18\0=\3\17\0023\2\19\0003\3\20\0\18\4\3\0'\6\21\0'\a\22\0B\4\3\1\18\4\2\0'\6\23\0'\a\24\0'\b\25\0B\4\4\1\18\4\2\0'\6\23\0'\a\26\0'\b\27\0B\4\4\1\18\4\2\0'\6\23\0'\a\28\0'\b\29\0B\4\4\1\18\4\2\0'\6\23\0'\a\30\0'\b\31\0B\4\4\1\18\4\2\0'\6\23\0'\a \0'\b!\0B\4\4\1\18\4\2\0'\6\23\0'\a\"\0'\b#\0B\4\4\1\18\4\2\0'\6\23\0'\a$\0'\b%\0B\4\4\1\18\4\2\0'\6\23\0'\a&\0'\b'\0B\4\4\1\18\4\2\0'\6\23\0'\a(\0'\b)\0B\4\4\1\18\4\2\0'\6\23\0'\a*\0'\b+\0B\4\4\1\18\4\2\0'\6\23\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6\23\0'\a.\0'\b/\0B\4\4\1\18\4\2\0'\6\23\0'\a0\0'\b1\0B\4\4\1\18\4\2\0'\6\23\0'\a2\0'\b3\0B\4\4\1\18\4\2\0'\6\23\0'\a4\0'\b5\0B\4\4\1\18\4\2\0'\6\23\0'\a6\0'\b7\0B\4\4\0019\0048\0009\0049\4\15\0\4\0X\5\6Ä\18\4\2\0'\6\23\0'\a:\0'\b;\0B\4\4\1X\4\tÄ9\0048\0009\4<\4\15\0\4\0X\5\5Ä\18\4\2\0'\6\23\0'\a:\0'\b;\0B\4\4\0012\0\0ÄK\0\1\0\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>lf\24document_formatting\26resolved_capabilities2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<Cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>ll7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>lr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>la.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\14UltiSnips\30completion_enable_snippet\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list#completion_matching_smart_case3imap <silent> <c-n> <Plug>(completion_trigger)3imap <silent> <c-p> <Plug>(completion_trigger)0imap <s-tab> <Plug>(completion_smart_s_tab),imap <tab> <Plug>(completion_smart_tab)\bcmd!completion_enable_auto_popup\6g\bvim\30menuone,noinsert,noselect\16completeopt\bset\14on_attach\15completion\frequire¡\4\1\0\r\0\"\0;6\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0009\b\5\b5\n\6\0=\1\a\nB\b\2\1E\6\3\3R\6˘9\3\b\0009\3\5\0035\5\n\0005\6\t\0=\6\v\0055\6\31\0005\a\18\0005\b\f\0006\t\r\0009\t\14\t6\v\15\0009\v\16\v'\f\17\0B\t\3\2=\t\16\b=\b\19\a5\b\21\0005\t\20\0=\t\22\b=\b\23\a5\b\28\0004\t\0\b6\n\r\0009\n\24\n9\n\25\n'\f\26\0B\n\2\2+\v\2\0<\v\n\t6\n\r\0009\n\24\n9\n\25\n'\f\27\0B\n\2\2+\v\2\0<\v\n\t=\t\29\b=\b\30\a=\a \6=\6!\5=\1\a\5B\3\2\1K\0\1\0\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\bvim\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\1\2\0\0!/usr/bin/lua-language-server\16sumneko_lua\14on_attach\1\0\0\nsetup\vipairs\1\n\0\0\vbashls\nvimls\fpyright\rtsserver\nvuels\vyamlls\tccls\vjsonls\ncmake\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\2\næ\5\0\0\4\0\23\0A6\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\v\1=\1\n\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\r\1=\1\f\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\15\1=\1\14\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\17\1=\1\16\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\20\1=\1\18\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\22\1=\1\21\0K\0\1\0\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‰\2\0\0\6\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0'\2\16\0=\2\15\0016\1\14\0'\2\18\0=\2\17\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bset\frainbow\1\0\1\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nf/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ultisnips = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  vim = {
    config = { "\27LJ\2\nr\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\2\0+\1\2\0=\1\3\0006\0\0\0'\2\4\0B\0\2\1K\0\1\0 hi CursorLine guibg=#343746\15cursorline\bset\24colorscheme dracula\bcmd\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-es2015-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nf/.local/share/nvim/site/pack/packer/opt/vim-es2015-snippets"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-hexokinase"
  },
  ["vim-highlightedyank"] = {
    config = { "\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1˙\0=\1\2\0K\0\1\0'highlightedyank_highlight_duration\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-highlightedyank"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-indent-object"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\ne\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\31vim_markdown_follow_anchor\29vim_markdown_toc_autofit\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    config = { "\27LJ\2\n6\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\6-\23vmt_list_item_char\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-markdown-toc"
  },
  ["vim-peekaboo"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-peekaboo"
  },
  ["vim-pencil"] = {
    config = { "\27LJ\2\n†\1\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\22:TogglePencil<CR>\15<leader>pp\6n\bmap\"let g:pencil#conceallevel = 0(let pencil#wrapModeDefault = \"soft\"\bcmd\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-react-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nf/.local/share/nvim/site/pack/packer/opt/vim-react-snippets"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nf/.local/share/nvim/site/pack/packer/opt/vim-snippets"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n=\0\0\5\0\4\0\0066\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\1K\0\1\0\18:Startify<CR>\14<leader>s\6n\bmap\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-chunk"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-textobj-chunk"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-textobj-entire"
  },
  ["vim-textobj-markdown"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-textobj-markdown"
  },
  ["vim-textobj-sentence"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-textobj-sentence"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  }
}

-- Config for: format.nvim
try_loadstring("\27LJ\2\n†\a\0\0\6\0$\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\0035\4\29\0005\5\28\0=\5\5\4>\4\2\3=\3\30\0024\3\3\0005\4 \0005\5\31\0=\5\5\4>\4\1\3=\3!\2B\0\2\0016\0\"\0'\2#\0+\3\2\0B\0\3\1K\0\1\0l      augroup Format\n      autocmd!\n      autocmd BufWritePost * FormatWrite\n      augroup END\n        \bexe\vpython\1\0\0\1\2\0\0\nblack\rmarkdown\1\0\3\16end_pattern\n^```$\18start_pattern\16^```python$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\bcpp\1\0\0\1\2\0\0\20clang-format -i\ncmake\1\0\0\1\2\0\0\20cmake-format -i\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\blua\1\0\0\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i \"s/[ \t]*$//\"\nsetup\vformat\frequire\0", "config", "format.nvim")
-- Config for: indentLine
try_loadstring("\27LJ\2\nœ\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\4\0\0\rmarkdown\btex\rstartify\31indentLine_fileTypeExclude\f#44475a\25indentLine_color_gui\28indentLine_conceallevel\b‚ñè\20indentLine_char\6g\bvim\0", "config", "indentLine")
-- Config for: vim-markdown-toc
try_loadstring("\27LJ\2\n6\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\6-\23vmt_list_item_char\6g\bvim\0", "config", "vim-markdown-toc")
-- Config for: vim-startify
try_loadstring("\27LJ\2\n=\0\0\5\0\4\0\0066\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\1K\0\1\0\18:Startify<CR>\14<leader>s\6n\bmap\0", "config", "vim-startify")
-- Config for: vim
try_loadstring("\27LJ\2\nr\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\2\0+\1\2\0=\1\3\0006\0\0\0'\2\4\0B\0\2\1K\0\1\0 hi CursorLine guibg=#343746\15cursorline\bset\24colorscheme dracula\bcmd\0", "config", "vim")
-- Config for: vim-pencil
try_loadstring("\27LJ\2\n†\1\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\22:TogglePencil<CR>\15<leader>pp\6n\bmap\"let g:pencil#conceallevel = 0(let pencil#wrapModeDefault = \"soft\"\bcmd\0", "config", "vim-pencil")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\ne\0\3\v\1\4\0\v5\3\0\0006\4\1\0009\4\2\0049\4\3\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2A\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim≤\15\1\2\t\0=\0è\0016\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\0016\2\3\0'\3\5\0=\3\4\0026\2\6\0009\2\a\2)\3\0\0=\3\b\0026\2\t\0'\4\n\0B\2\2\0016\2\t\0'\4\v\0B\2\2\0016\2\t\0'\4\f\0B\2\2\0016\2\t\0'\4\r\0B\2\2\0016\2\6\0009\2\a\2)\3\1\0=\3\14\0026\2\6\0009\2\a\0025\3\16\0=\3\15\0026\2\6\0009\2\a\2'\3\18\0=\3\17\0023\2\19\0003\3\20\0\18\4\3\0'\6\21\0'\a\22\0B\4\3\1\18\4\2\0'\6\23\0'\a\24\0'\b\25\0B\4\4\1\18\4\2\0'\6\23\0'\a\26\0'\b\27\0B\4\4\1\18\4\2\0'\6\23\0'\a\28\0'\b\29\0B\4\4\1\18\4\2\0'\6\23\0'\a\30\0'\b\31\0B\4\4\1\18\4\2\0'\6\23\0'\a \0'\b!\0B\4\4\1\18\4\2\0'\6\23\0'\a\"\0'\b#\0B\4\4\1\18\4\2\0'\6\23\0'\a$\0'\b%\0B\4\4\1\18\4\2\0'\6\23\0'\a&\0'\b'\0B\4\4\1\18\4\2\0'\6\23\0'\a(\0'\b)\0B\4\4\1\18\4\2\0'\6\23\0'\a*\0'\b+\0B\4\4\1\18\4\2\0'\6\23\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6\23\0'\a.\0'\b/\0B\4\4\1\18\4\2\0'\6\23\0'\a0\0'\b1\0B\4\4\1\18\4\2\0'\6\23\0'\a2\0'\b3\0B\4\4\1\18\4\2\0'\6\23\0'\a4\0'\b5\0B\4\4\1\18\4\2\0'\6\23\0'\a6\0'\b7\0B\4\4\0019\0048\0009\0049\4\15\0\4\0X\5\6Ä\18\4\2\0'\6\23\0'\a:\0'\b;\0B\4\4\1X\4\tÄ9\0048\0009\4<\4\15\0\4\0X\5\5Ä\18\4\2\0'\6\23\0'\a:\0'\b;\0B\4\4\0012\0\0ÄK\0\1\0\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>lf\24document_formatting\26resolved_capabilities2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<Cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>ll7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>lr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>la.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\14UltiSnips\30completion_enable_snippet\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list#completion_matching_smart_case3imap <silent> <c-n> <Plug>(completion_trigger)3imap <silent> <c-p> <Plug>(completion_trigger)0imap <s-tab> <Plug>(completion_smart_s_tab),imap <tab> <Plug>(completion_smart_tab)\bcmd!completion_enable_auto_popup\6g\bvim\30menuone,noinsert,noselect\16completeopt\bset\14on_attach\15completion\frequire¡\4\1\0\r\0\"\0;6\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0009\b\5\b5\n\6\0=\1\a\nB\b\2\1E\6\3\3R\6˘9\3\b\0009\3\5\0035\5\n\0005\6\t\0=\6\v\0055\6\31\0005\a\18\0005\b\f\0006\t\r\0009\t\14\t6\v\15\0009\v\16\v'\f\17\0B\t\3\2=\t\16\b=\b\19\a5\b\21\0005\t\20\0=\t\22\b=\b\23\a5\b\28\0004\t\0\b6\n\r\0009\n\24\n9\n\25\n'\f\26\0B\n\2\2+\v\2\0<\v\n\t6\n\r\0009\n\24\n9\n\25\n'\f\27\0B\n\2\2+\v\2\0<\v\n\t=\t\29\b=\b\30\a=\a \6=\6!\5=\1\a\5B\3\2\1K\0\1\0\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\bvim\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\1\2\0\0!/usr/bin/lua-language-server\16sumneko_lua\14on_attach\1\0\0\nsetup\vipairs\1\n\0\0\vbashls\nvimls\fpyright\rtsserver\nvuels\vyamlls\tccls\vjsonls\ncmake\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
-- Config for: vim-markdown
try_loadstring("\27LJ\2\ne\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\31vim_markdown_follow_anchor\29vim_markdown_toc_autofit\6g\bvim\0", "config", "vim-markdown")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n‰\2\0\0\6\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0'\2\16\0=\2\15\0016\1\14\0'\2\18\0=\2\17\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bset\frainbow\1\0\1\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
-- Config for: FTerm.nvim
try_loadstring("\27LJ\2\nï\1\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\4\0'\3\2\0'\4\5\0B\0\4\1K\0\1\0003<C-\\><C-n><CMD>lua require\"FTerm\".toggle()<CR>\6t)<CMD>lua require\"FTerm\".toggle()<CR>\n<M-r>\6n\bmap\0", "config", "FTerm.nvim")
-- Config for: vim-highlightedyank
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1˙\0=\1\2\0K\0\1\0'highlightedyank_highlight_duration\6g\bvim\0", "config", "vim-highlightedyank")
-- Config for: kommentary
try_loadstring("\27LJ\2\n|\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nJ\0\0\1\0\5\1\v6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\3Ä'\0\3\0L\0\2\0X\0\2Ä'\0\4\0L\0\2\0K\0\1\0\aru\aus\riminsert\abo\bvim\0º\2\1\0\4\0\20\0\0246\0\0\0'\2\1\0B\0\2\0025\1\3\0=\1\2\0003\1\4\0005\2\a\0005\3\6\0>\1\2\3=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\2=\2\5\0009\2\19\0B\2\1\1K\0\1\0\vstatus\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\0\1\0\2\ntheme\fdracula\18icons_enabled\2\foptions\flualine\frequire\0", "config", "lualine.nvim")
-- Config for: emmet-vim
try_loadstring("\27LJ\2\n_\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\n<A-m>\26user_emmet_leader_key\6i\20user_emmet_mode\6g\bvim\0", "config", "emmet-vim")
-- Config for: fzf.vim
try_loadstring("\27LJ\2\n±\1\0\0\5\0\n\0\0216\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0'\2\1\0'\3\b\0'\4\t\0B\0\4\1K\0\1\0\16:BLines<CR>\n<C-f>\f:Rg<CR>\14<leader>g\17:Buffers<CR>\14<leader>o\15:Files<CR>\14<leader>f\6n\bmap\0", "config", "fzf.vim")
-- Config for: nvim-lsputils
try_loadstring("\27LJ\2\næ\5\0\0\4\0\23\0A6\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\v\1=\1\n\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\r\1=\1\f\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\15\1=\1\14\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\17\1=\1\16\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\20\1=\1\18\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\22\1=\1\21\0K\0\1\0\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0", "config", "nvim-lsputils")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
