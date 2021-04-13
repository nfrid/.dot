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
    config = { "\27LJ\2\nï\b\0\0\6\0/\0X6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0005\5\29\0=\5\5\4>\4\1\3=\3\31\0024\3\3\0005\4!\0005\5 \0=\5\5\4>\4\1\3=\3\"\0024\3\3\0005\4$\0005\5#\0=\5\5\4>\4\1\0035\4&\0005\5%\0=\5\5\4>\4\2\3=\3'\0024\3\3\0005\4)\0005\5(\0=\5\5\4>\4\1\3=\3*\2B\0\2\0016\0+\0'\2,\0'\3-\0'\4.\0B\0\4\1K\0\1\0\21:FormatWrite<CR>\14<leader>F\6n\bMap\vpython\1\0\0\1\2\0\0\nblack\rmarkdown\1\0\3\18start_pattern\16^```python$\16end_pattern\n^```$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0$prettier -w --prose-wrap always\bcpp\1\0\0\1\2\0\0 clang-format -style=file -i\6c\1\0\0\1\2\0\0 clang-format -style=file -i\ncmake\1\0\0\1\2\0\0\20cmake-format -i\tjson\1\0\0\1\2\0\0\16prettier -w\15typescript\1\0\0\1\3\0\0\16prettier -w\17eslint --fix\15javascript\1\0\0\1\3\0\0\16prettier -w\17eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\blua\1\0\0\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\bvim\1\0\2\18start_pattern\17^lua << EOF$\16end_pattern\n^EOF$\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i \"s/[ \t]*$//\"\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/format.nvim"
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
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\1\0\5\1\v6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\3Ä'\0\3\0L\0\2\0X\0\2Ä'\0\4\0L\0\2\0K\0\1\0\aru\aus\riminsert\abo\bvim\0Ú\2\0\0\a\0\14\1B6\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\2\14\0\0\0X\0005Ä6\0\0\0009\0\2\0009\0\4\0009\0\5\0)\2\0\0'\3\6\0B\0\3\0026\1\0\0009\1\2\0019\1\4\0019\1\5\1)\3\0\0'\4\a\0B\1\3\0026\2\0\0009\2\2\0029\2\4\0029\2\5\2)\4\0\0'\5\b\0B\2\3\0026\3\0\0009\3\2\0039\3\4\0039\3\5\3)\5\0\0'\6\t\0B\3\3\2 \2\3\2\t\0\0\0X\3\2Ä'\3\n\0X\4\3Ä\18\3\0\0'\4\v\0&\3\4\3\t\1\0\0X\4\2Ä'\4\n\0X\5\3Ä\18\4\1\0'\5\f\0&\4\5\4\t\2\0\0X\5\2Ä'\5\n\0X\6\3Ä\18\5\2\0'\6\r\0&\5\6\5&\3\5\3L\3\2\0X\0\2Ä'\0\n\0L\0\2\0K\0\1\0\aI \aW \aE \5\tHint\16Information\fWarning\nError\14get_count\15diagnostic\20buf_get_clients\blsp\16tbl_isempty\bvim\0ë\3\1\0\a\0\26\0\0313\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\n\0005\5\5\0005\6\6\0=\6\a\0055\6\b\0=\6\t\5=\5\v\0045\5\r\0005\6\f\0>\0\2\6=\6\14\0055\6\15\0=\6\16\0055\6\17\0>\1\2\6=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\0055\6\23\0=\6\24\5=\5\25\4B\2\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\3\0\0\6|\6|\23section_separators\1\3\0\0\5\5\1\0\2\ntheme\fdracula\18icons_enabled\2\nsetup\flualine\frequire\0\0\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ne\0\3\v\1\4\0\v5\3\0\0006\4\1\0009\4\2\0049\4\3\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2A\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimÌ\r\1\2\t\0009\0Ñ\0016\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\0016\2\3\0'\3\5\0=\3\4\0026\2\6\0009\2\a\2)\3\0\0=\3\b\0026\2\t\0'\4\n\0B\2\2\0016\2\t\0'\4\v\0B\2\2\0016\2\6\0009\2\a\2)\3\1\0=\3\f\0026\2\6\0009\2\a\0025\3\14\0=\3\r\0026\2\6\0009\2\a\2'\3\16\0=\3\15\0023\2\17\0003\3\18\0\18\4\3\0'\6\19\0'\a\20\0B\4\3\1\18\4\2\0'\6\21\0'\a\22\0'\b\23\0B\4\4\1\18\4\2\0'\6\21\0'\a\24\0'\b\25\0B\4\4\1\18\4\2\0'\6\21\0'\a\26\0'\b\27\0B\4\4\1\18\4\2\0'\6\21\0'\a\28\0'\b\29\0B\4\4\1\18\4\2\0'\6\21\0'\a\30\0'\b\31\0B\4\4\1\18\4\2\0'\6\21\0'\a \0'\b!\0B\4\4\1\18\4\2\0'\6\21\0'\a\"\0'\b#\0B\4\4\1\18\4\2\0'\6\21\0'\a$\0'\b%\0B\4\4\1\18\4\2\0'\6\21\0'\a&\0'\b'\0B\4\4\1\18\4\2\0'\6\21\0'\a(\0'\b)\0B\4\4\1\18\4\2\0'\6\21\0'\a*\0'\b+\0B\4\4\1\18\4\2\0'\6\21\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6\21\0'\a.\0'\b/\0B\4\4\1\18\4\2\0'\6\21\0'\a0\0'\b1\0B\4\4\1\18\4\2\0'\6\21\0'\a2\0'\b3\0B\4\4\0019\0044\0009\0045\4\15\0\4\0X\5\6Ä\18\4\2\0'\6\21\0'\a6\0'\b7\0B\4\4\1X\4\tÄ9\0044\0009\0048\4\15\0\4\0X\5\5Ä\18\4\2\0'\6\21\0'\a6\0'\b7\0B\4\4\0012\0\0ÄK\0\1\0\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>lf\24document_formatting\26resolved_capabilities2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<Cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\t<F2>J<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>ll7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>lr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>la.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<A-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\14UltiSnips\30completion_enable_snippet\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list#completion_matching_smart_case0imap <s-tab> <Plug>(completion_smart_s_tab),imap <tab> <Plug>(completion_smart_tab)\bCmd!completion_enable_auto_popup\6g\bvim\30menuone,noinsert,noselect\16completeopt\bSet\14on_attach\15completion\frequireè\6\1\0\r\0-\0I6\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0009\b\5\b5\n\6\0=\1\a\nB\b\2\1E\6\3\3R\6˘9\3\b\0009\3\5\0035\5\18\0005\6\16\0005\a\f\0005\b\n\0005\t\t\0=\t\v\b=\b\r\a5\b\14\0=\b\15\a=\a\17\6=\6\19\5B\3\2\0019\3\20\0009\3\5\0035\5\22\0005\6\21\0=\6\23\0055\6+\0005\a\30\0005\b\24\0006\t\25\0009\t\26\t6\v\27\0009\v\28\v'\f\29\0B\t\3\2=\t\28\b=\b\31\a5\b!\0005\t \0=\t\"\b=\b#\a5\b(\0004\t\0\b6\n\25\0009\n$\n9\n%\n'\f&\0B\n\2\2+\v\2\0<\v\n\t6\n\25\0009\n$\n9\n%\n'\f'\0B\n\2\2+\v\2\0<\v\n\t=\t)\b=\b*\a=\a,\6=\6\19\5=\1\a\5B\3\2\1K\0\1\0\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\bvim\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\1\2\0\0!/usr/bin/lua-language-server\16sumneko_lua\rsettings\1\0\0\nlatex\1\0\0\tlint\1\0\1\ronChange\2\nbuild\1\0\0\targs\1\0\2\vonSave\2\20outputDirectory\f./build\1\6\0\0\t-pdf\29-interaction=nonstopmode\15-synctex=1\20-outdir=./build\a%f\vtexlab\14on_attach\1\0\0\nsetup\vipairs\1\n\0\0\vbashls\nvimls\fpyright\rtsserver\nvuels\vyamlls\tccls\vjsonls\ncmake\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\2\næ\5\0\0\4\0\23\0A6\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\v\1=\1\n\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\r\1=\1\f\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\15\1=\1\14\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\17\1=\1\16\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\20\1=\1\18\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\22\1=\1\21\0K\0\1\0\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nî\3\0\0\6\0\21\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0005\5\v\0=\5\f\4=\4\r\0035\4\14\0=\4\15\3B\1\2\0016\1\16\0'\2\18\0=\2\17\0016\1\16\0'\2\20\0=\2\19\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bSet\frainbow\1\0\1\venable\2\vindent\fdisable\1\5\0\0\15javascript\15typescript\6c\bcpp\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\n™\2\0\0\4\0\2\0\0056\0\0\0'\2\1\0+\3\2\0B\0\3\1K\0\1\0é\2        hi rainbowcol1 guifg=#ffd700\n        hi rainbowcol2 guifg=#ff00d7\n        hi rainbowcol3 guifg=#00ffd7\n        hi rainbowcol4 guifg=#d7ff00\n        hi rainbowcol5 guifg=#ff7070\n        hi rainbowcol6 guifg=#d700ff\n        hi rainbowcol7 guifg=#00d7ff\n      \bExe\0" },
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
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nº\6\0\0\5\0\23\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\0016\0\3\0'\2\4\0'\3\a\0'\4\b\0B\0\4\0016\0\3\0'\2\4\0'\3\t\0'\4\n\0B\0\4\0016\0\3\0'\2\4\0'\3\v\0'\4\f\0B\0\4\0016\0\3\0'\2\4\0'\3\r\0'\4\14\0B\0\4\0016\0\3\0'\2\4\0'\3\15\0'\4\16\0B\0\4\0016\0\3\0'\2\4\0'\3\17\0'\4\18\0B\0\4\0016\0\3\0'\2\4\0'\3\19\0'\4\20\0B\0\4\0016\0\3\0'\2\4\0'\3\21\0'\4\22\0B\0\4\1K\0\1\0J<cmd>lua require(\"telescope.builtin\").lsp_workspace_diagnostics()<CR>\14<leader>D9<cmd>lua require(\"telescope.builtin\").commands()<CR>\t<F1>J<cmd>lua require(\"telescope.builtin\").current_buffer_fuzzy_find()<CR>\n<C-f>F<cmd>lua require(\"telescope.builtin\").lsp_workspace_symbols()<CR>\14<leader>RE<cmd>lua require(\"telescope.builtin\").lsp_document_symbols()<CR>\14<leader>r6<cmd>lua require(\"telescope.builtin\").marks()<CR>\14<leader>m8<cmd>lua require(\"telescope.builtin\").buffers()<CR>\14<leader>o=<cmd>lua require(\"telescope.builtin\").file_browser()<CR>\14<leader>f\23<cmd>Telescope<CR>\14<leader>t\6n\bMap\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vem-tabline"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vem-tabline"
  },
  vim = {
    config = { "\27LJ\2\nò\1\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0009hi CursorLineNr guifg=#F1FA8C guibg=#21222C gui=none hi CursorLine guibg=#21222C\24colorscheme dracula\bCmd\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-es2015-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nf/.local/share/nvim/site/pack/packer/opt/vim-es2015-snippets"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-fish"
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
    config = { "\27LJ\2\n†\1\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\22:TogglePencil<CR>\15<leader>pp\6n\bMap\"let g:pencil#conceallevel = 0(let pencil#wrapModeDefault = \"soft\"\bCmd\0" },
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
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nf/.local/share/nvim/site/pack/packer/opt/vim-snippets"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n=\0\0\5\0\4\0\0066\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\1K\0\1\0\18:Startify<CR>\14<leader>s\6n\bMap\0" },
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
  },
  vimtex = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}

-- Config for: vim
try_loadstring("\27LJ\2\nò\1\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0009hi CursorLineNr guifg=#F1FA8C guibg=#21222C gui=none hi CursorLine guibg=#21222C\24colorscheme dracula\bCmd\0", "config", "vim")
-- Config for: nvim-lsputils
try_loadstring("\27LJ\2\næ\5\0\0\4\0\23\0A6\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\v\1=\1\n\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\r\1=\1\f\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\15\1=\1\14\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\b\0B\1\2\0029\1\17\1=\1\16\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\20\1=\1\18\0006\0\0\0009\0\1\0009\0\2\0006\1\4\0'\3\19\0B\1\2\0029\1\22\1=\1\21\0K\0\1\0\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0", "config", "nvim-lsputils")
-- Config for: vim-markdown-toc
try_loadstring("\27LJ\2\n6\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\6-\23vmt_list_item_char\6g\bvim\0", "config", "vim-markdown-toc")
-- Config for: vim-highlightedyank
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1˙\0=\1\2\0K\0\1\0'highlightedyank_highlight_duration\6g\bvim\0", "config", "vim-highlightedyank")
-- Config for: lspkind-nvim
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
-- Config for: vim-markdown
try_loadstring("\27LJ\2\ne\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\31vim_markdown_follow_anchor\29vim_markdown_toc_autofit\6g\bvim\0", "config", "vim-markdown")
-- Config for: format.nvim
try_loadstring("\27LJ\2\nï\b\0\0\6\0/\0X6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0005\5\23\0=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0005\5\26\0=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0005\5\29\0=\5\5\4>\4\1\3=\3\31\0024\3\3\0005\4!\0005\5 \0=\5\5\4>\4\1\3=\3\"\0024\3\3\0005\4$\0005\5#\0=\5\5\4>\4\1\0035\4&\0005\5%\0=\5\5\4>\4\2\3=\3'\0024\3\3\0005\4)\0005\5(\0=\5\5\4>\4\1\3=\3*\2B\0\2\0016\0+\0'\2,\0'\3-\0'\4.\0B\0\4\1K\0\1\0\21:FormatWrite<CR>\14<leader>F\6n\bMap\vpython\1\0\0\1\2\0\0\nblack\rmarkdown\1\0\3\18start_pattern\16^```python$\16end_pattern\n^```$\vtarget\fcurrent\1\2\0\0\nblack\1\0\0\1\2\0\0$prettier -w --prose-wrap always\bcpp\1\0\0\1\2\0\0 clang-format -style=file -i\6c\1\0\0\1\2\0\0 clang-format -style=file -i\ncmake\1\0\0\1\2\0\0\20cmake-format -i\tjson\1\0\0\1\2\0\0\16prettier -w\15typescript\1\0\0\1\3\0\0\16prettier -w\17eslint --fix\15javascript\1\0\0\1\3\0\0\16prettier -w\17eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\blua\1\0\0\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\bvim\1\0\2\18start_pattern\17^lua << EOF$\16end_pattern\n^EOF$\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i \"s/[ \t]*$//\"\nsetup\vformat\frequire\0", "config", "format.nvim")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\ne\0\3\v\1\4\0\v5\3\0\0006\4\1\0009\4\2\0049\4\3\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2A\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimÌ\r\1\2\t\0009\0Ñ\0016\2\0\0'\4\1\0B\2\2\0029\2\2\2B\2\1\0016\2\3\0'\3\5\0=\3\4\0026\2\6\0009\2\a\2)\3\0\0=\3\b\0026\2\t\0'\4\n\0B\2\2\0016\2\t\0'\4\v\0B\2\2\0016\2\6\0009\2\a\2)\3\1\0=\3\f\0026\2\6\0009\2\a\0025\3\14\0=\3\r\0026\2\6\0009\2\a\2'\3\16\0=\3\15\0023\2\17\0003\3\18\0\18\4\3\0'\6\19\0'\a\20\0B\4\3\1\18\4\2\0'\6\21\0'\a\22\0'\b\23\0B\4\4\1\18\4\2\0'\6\21\0'\a\24\0'\b\25\0B\4\4\1\18\4\2\0'\6\21\0'\a\26\0'\b\27\0B\4\4\1\18\4\2\0'\6\21\0'\a\28\0'\b\29\0B\4\4\1\18\4\2\0'\6\21\0'\a\30\0'\b\31\0B\4\4\1\18\4\2\0'\6\21\0'\a \0'\b!\0B\4\4\1\18\4\2\0'\6\21\0'\a\"\0'\b#\0B\4\4\1\18\4\2\0'\6\21\0'\a$\0'\b%\0B\4\4\1\18\4\2\0'\6\21\0'\a&\0'\b'\0B\4\4\1\18\4\2\0'\6\21\0'\a(\0'\b)\0B\4\4\1\18\4\2\0'\6\21\0'\a*\0'\b+\0B\4\4\1\18\4\2\0'\6\21\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6\21\0'\a.\0'\b/\0B\4\4\1\18\4\2\0'\6\21\0'\a0\0'\b1\0B\4\4\1\18\4\2\0'\6\21\0'\a2\0'\b3\0B\4\4\0019\0044\0009\0045\4\15\0\4\0X\5\6Ä\18\4\2\0'\6\21\0'\a6\0'\b7\0B\4\4\1X\4\tÄ9\0044\0009\0048\4\15\0\4\0X\5\5Ä\18\4\2\0'\6\21\0'\a6\0'\b7\0B\4\4\0012\0\0ÄK\0\1\0\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>lf\24document_formatting\26resolved_capabilities2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<Cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\t<F2>J<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>ll7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>lr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>la.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<A-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\14UltiSnips\30completion_enable_snippet\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list#completion_matching_smart_case0imap <s-tab> <Plug>(completion_smart_s_tab),imap <tab> <Plug>(completion_smart_tab)\bCmd!completion_enable_auto_popup\6g\bvim\30menuone,noinsert,noselect\16completeopt\bSet\14on_attach\15completion\frequireè\6\1\0\r\0-\0I6\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0009\b\5\b5\n\6\0=\1\a\nB\b\2\1E\6\3\3R\6˘9\3\b\0009\3\5\0035\5\18\0005\6\16\0005\a\f\0005\b\n\0005\t\t\0=\t\v\b=\b\r\a5\b\14\0=\b\15\a=\a\17\6=\6\19\5B\3\2\0019\3\20\0009\3\5\0035\5\22\0005\6\21\0=\6\23\0055\6+\0005\a\30\0005\b\24\0006\t\25\0009\t\26\t6\v\27\0009\v\28\v'\f\29\0B\t\3\2=\t\28\b=\b\31\a5\b!\0005\t \0=\t\"\b=\b#\a5\b(\0004\t\0\b6\n\25\0009\n$\n9\n%\n'\f&\0B\n\2\2+\v\2\0<\v\n\t6\n\25\0009\n$\n9\n%\n'\f'\0B\n\2\2+\v\2\0<\v\n\t=\t)\b=\b*\a=\a,\6=\6\19\5=\1\a\5B\3\2\1K\0\1\0\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\bvim\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\1\2\0\0!/usr/bin/lua-language-server\16sumneko_lua\rsettings\1\0\0\nlatex\1\0\0\tlint\1\0\1\ronChange\2\nbuild\1\0\0\targs\1\0\2\vonSave\2\20outputDirectory\f./build\1\6\0\0\t-pdf\29-interaction=nonstopmode\15-synctex=1\20-outdir=./build\a%f\vtexlab\14on_attach\1\0\0\nsetup\vipairs\1\n\0\0\vbashls\nvimls\fpyright\rtsserver\nvuels\vyamlls\tccls\vjsonls\ncmake\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
-- Config for: emmet-vim
try_loadstring("\27LJ\2\n_\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\n<A-m>\26user_emmet_leader_key\6i\20user_emmet_mode\6g\bvim\0", "config", "emmet-vim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\nî\3\0\0\6\0\21\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0005\5\v\0=\5\f\4=\4\r\0035\4\14\0=\4\15\3B\1\2\0016\1\16\0'\2\18\0=\2\17\0016\1\16\0'\2\20\0=\2\19\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bSet\frainbow\1\0\1\venable\2\vindent\fdisable\1\5\0\0\15javascript\15typescript\6c\bcpp\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nJ\0\0\1\0\5\1\v6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\3Ä'\0\3\0L\0\2\0X\0\2Ä'\0\4\0L\0\2\0K\0\1\0\aru\aus\riminsert\abo\bvim\0Ú\2\0\0\a\0\14\1B6\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\2\14\0\0\0X\0005Ä6\0\0\0009\0\2\0009\0\4\0009\0\5\0)\2\0\0'\3\6\0B\0\3\0026\1\0\0009\1\2\0019\1\4\0019\1\5\1)\3\0\0'\4\a\0B\1\3\0026\2\0\0009\2\2\0029\2\4\0029\2\5\2)\4\0\0'\5\b\0B\2\3\0026\3\0\0009\3\2\0039\3\4\0039\3\5\3)\5\0\0'\6\t\0B\3\3\2 \2\3\2\t\0\0\0X\3\2Ä'\3\n\0X\4\3Ä\18\3\0\0'\4\v\0&\3\4\3\t\1\0\0X\4\2Ä'\4\n\0X\5\3Ä\18\4\1\0'\5\f\0&\4\5\4\t\2\0\0X\5\2Ä'\5\n\0X\6\3Ä\18\5\2\0'\6\r\0&\5\6\5&\3\5\3L\3\2\0X\0\2Ä'\0\n\0L\0\2\0K\0\1\0\aI \aW \aE \5\tHint\16Information\fWarning\nError\14get_count\15diagnostic\20buf_get_clients\blsp\16tbl_isempty\bvim\0ë\3\1\0\a\0\26\0\0313\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\n\0005\5\5\0005\6\6\0=\6\a\0055\6\b\0=\6\t\5=\5\v\0045\5\r\0005\6\f\0>\0\2\6=\6\14\0055\6\15\0=\6\16\0055\6\17\0>\1\2\6=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\0055\6\23\0=\6\24\5=\5\25\4B\2\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\3\0\0\6|\6|\23section_separators\1\3\0\0\5\5\1\0\2\ntheme\fdracula\18icons_enabled\2\nsetup\flualine\frequire\0\0\0", "config", "lualine.nvim")
-- Config for: kommentary
try_loadstring("\27LJ\2\n|\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
-- Config for: vim-pencil
try_loadstring("\27LJ\2\n†\1\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\22:TogglePencil<CR>\15<leader>pp\6n\bMap\"let g:pencil#conceallevel = 0(let pencil#wrapModeDefault = \"soft\"\bCmd\0", "config", "vim-pencil")
-- Config for: nvim-ts-rainbow
try_loadstring("\27LJ\2\n™\2\0\0\4\0\2\0\0056\0\0\0'\2\1\0+\3\2\0B\0\3\1K\0\1\0é\2        hi rainbowcol1 guifg=#ffd700\n        hi rainbowcol2 guifg=#ff00d7\n        hi rainbowcol3 guifg=#00ffd7\n        hi rainbowcol4 guifg=#d7ff00\n        hi rainbowcol5 guifg=#ff7070\n        hi rainbowcol6 guifg=#d700ff\n        hi rainbowcol7 guifg=#00d7ff\n      \bExe\0", "config", "nvim-ts-rainbow")
-- Config for: indentLine
try_loadstring("\27LJ\2\nœ\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\4\0\0\rmarkdown\btex\rstartify\31indentLine_fileTypeExclude\f#44475a\25indentLine_color_gui\28indentLine_conceallevel\b‚ñè\20indentLine_char\6g\bvim\0", "config", "indentLine")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\nº\6\0\0\5\0\23\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\0016\0\3\0'\2\4\0'\3\a\0'\4\b\0B\0\4\0016\0\3\0'\2\4\0'\3\t\0'\4\n\0B\0\4\0016\0\3\0'\2\4\0'\3\v\0'\4\f\0B\0\4\0016\0\3\0'\2\4\0'\3\r\0'\4\14\0B\0\4\0016\0\3\0'\2\4\0'\3\15\0'\4\16\0B\0\4\0016\0\3\0'\2\4\0'\3\17\0'\4\18\0B\0\4\0016\0\3\0'\2\4\0'\3\19\0'\4\20\0B\0\4\0016\0\3\0'\2\4\0'\3\21\0'\4\22\0B\0\4\1K\0\1\0J<cmd>lua require(\"telescope.builtin\").lsp_workspace_diagnostics()<CR>\14<leader>D9<cmd>lua require(\"telescope.builtin\").commands()<CR>\t<F1>J<cmd>lua require(\"telescope.builtin\").current_buffer_fuzzy_find()<CR>\n<C-f>F<cmd>lua require(\"telescope.builtin\").lsp_workspace_symbols()<CR>\14<leader>RE<cmd>lua require(\"telescope.builtin\").lsp_document_symbols()<CR>\14<leader>r6<cmd>lua require(\"telescope.builtin\").marks()<CR>\14<leader>m8<cmd>lua require(\"telescope.builtin\").buffers()<CR>\14<leader>o=<cmd>lua require(\"telescope.builtin\").file_browser()<CR>\14<leader>f\23<cmd>Telescope<CR>\14<leader>t\6n\bMap\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
-- Config for: vim-startify
try_loadstring("\27LJ\2\n=\0\0\5\0\4\0\0066\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\1K\0\1\0\18:Startify<CR>\14<leader>s\6n\bMap\0", "config", "vim-startify")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
