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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nf/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/nf/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/nf/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/nf/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nf/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["due.nvim"] = {
    config = { "\27LJ\1\2:\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\rdue_nvim\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/due.nvim"
  },
  ["emmet-vim"] = {
    config = { "\27LJ\1\2_\0\0\2\0\6\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0%\1\5\0:\1\4\0G\0\1\0\n<A-m>\26user_emmet_leader_key\6i\20user_emmet_mode\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  hop = {
    config = { "\27LJ\1\2˝\2\0\0\4\0\17\0*4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\3\0%\1\4\0%\2\5\0%\3\6\0>\0\4\0014\0\3\0%\1\4\0%\2\a\0%\3\b\0>\0\4\0014\0\3\0%\1\4\0%\2\t\0%\3\b\0>\0\4\0014\0\3\0%\1\4\0%\2\n\0%\3\v\0>\0\4\0014\0\3\0%\1\4\0%\2\f\0%\3\v\0>\0\4\0014\0\3\0%\1\4\0%\2\r\0%\3\14\0>\0\4\0014\0\3\0%\1\4\0%\2\15\0%\3\16\0>\0\4\1G\0\1\0+<cmd>lua require'hop'.hint_char2()<cr>\ass+<cmd>lua require'hop'.hint_char1()<cr>\asf\ask+<cmd>lua require'hop'.hint_lines()<cr>\asj\ash+<cmd>lua require'hop'.hint_words()<cr>\asl\n<NOP>\6s\6n\bMap\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2¥\2\0\0\2\0\n\0\0214\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0004\0\0\0007\0\1\0)\1\1\0:\1\6\0004\0\0\0007\0\1\0)\1\2\0:\1\a\0004\0\0\0007\0\1\0003\1\t\0:\1\b\0G\0\1\0\1\4\0\0\rmarkdown\btex\rstartify&indent_blankline_filetype_exclude$indent_blankline_use_treesitter-indent_blankline_show_first_indent_level\1\2\0\0\15IndentLine)indent_blankline_char_highlight_list\b‚ñè\26indent_blankline_char\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp-rooter.nvim"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\15lsp-rooter\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lsp-rooter.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\0024\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2J\0\0\1\0\5\1\v4\0\0\0007\0\1\0007\0\2\0\t\0\0\0T\0\3Ä%\0\3\0H\0\2\0T\0\2Ä%\0\4\0H\0\2\0G\0\1\0\aru\aus\riminsert\abo\bvim\0˘\3\1\0\a\0\30\0#1\0\0\0004\1\1\0%\2\2\0>\1\2\0027\1\3\0013\2\t\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\3:\3\n\0023\3\f\0003\4\v\0;\0\2\4:\4\r\0033\4\14\0:\4\15\0033\4\16\0003\5\17\0003\6\18\0:\6\19\0053\6\20\0:\6\21\5;\5\2\4:\4\22\0033\4\23\0:\4\24\0033\4\25\0:\4\26\0033\4\27\0:\4\28\3:\3\29\2>\1\2\1G\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsymbols\1\0\4\thint\tÔ†¥ \tinfo\tÔÅö \twarn\tÔÅô \nerror\tÔÅ± \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\3\0\0\6|\6|\23section_separators\1\3\0\0\5\5\1\0\2\18icons_enabled\2\ntheme\fdracula\nsetup\flualine\frequire\0\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { '\27LJ\1\2Ï\3\0\0\5\0\18\0"4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\2>\1\2\0014\1\6\0%\2\a\0%\3\b\0%\4\t\0>\1\4\0014\1\6\0%\2\a\0%\3\n\0%\4\v\0>\1\4\0014\1\6\0%\2\a\0%\3\f\0%\4\r\0>\1\4\0014\1\6\0%\2\a\0%\3\14\0%\4\15\0>\1\4\0014\1\6\0%\2\a\0%\3\16\0%\4\17\0>\1\4\1G\0\1\0001:lua require("bufferline").pick_buffer()<CR>\agb+:lua require("bufferline").move(1)<CR>\6L,:lua require("bufferline").move(-1)<CR>\6H,:lua require("bufferline").cycle(1)<CR>\n<C-l>-:lua require("bufferline").cycle(-1)<CR>\n<C-h>\6n\bMap\foptions\1\0\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\rmappings\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0' },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2x\0\0\3\0\t\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\0013\2\b\0>\0\3\1G\0\1\0\1\0\1\nnames\1\tscss\1\0\1\bscc\2\bcss\1\0\1\bcss\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2e\0\3\n\1\4\0\v3\3\0\0004\4\1\0007\4\2\0047\4\3\4+\5\0\0\16\6\0\0\16\a\1\0\16\b\2\0\16\t\3\0>\4\6\1G\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimΩ\15\1\2\b\0?\0î\0014\2\0\0%\3\1\0>\2\2\0027\2\2\0023\3\3\0003\4\4\0:\4\5\3>\2\2\0014\2\6\0007\2\a\2%\3\t\0:\3\b\0024\2\6\0007\2\n\2'\3\0\0:\3\v\0024\2\6\0007\2\n\2'\3\0\0:\3\f\0024\2\r\0%\3\14\0>\2\2\0014\2\r\0%\3\15\0>\2\2\0014\2\r\0%\3\16\0>\2\2\0014\2\6\0007\2\n\2'\3\1\0:\3\17\0024\2\6\0007\2\n\0023\3\19\0:\3\18\0024\2\6\0007\2\n\2%\3\21\0:\3\20\0024\2\0\0%\3\22\0>\2\2\0027\2\2\2>\2\1\0011\2\23\0001\3\24\0\16\4\3\0%\5\25\0%\6\26\0>\4\3\1\16\4\2\0%\5\27\0%\6\28\0%\a\29\0>\4\4\1\16\4\2\0%\5\27\0%\6\30\0%\a\31\0>\4\4\1\16\4\2\0%\5\27\0%\6 \0%\a!\0>\4\4\1\16\4\2\0%\5\27\0%\6\"\0%\a#\0>\4\4\1\16\4\2\0%\5\27\0%\6$\0%\a%\0>\4\4\1\16\4\2\0%\5\27\0%\6&\0%\a'\0>\4\4\1\16\4\2\0%\5\27\0%\6(\0%\a)\0>\4\4\1\16\4\2\0%\5\27\0%\6*\0%\a+\0>\4\4\1\16\4\2\0%\5\27\0%\6,\0%\a-\0>\4\4\1\16\4\2\0%\5\27\0%\6.\0%\a/\0>\4\4\1\16\4\2\0%\5\27\0%\0060\0%\a1\0>\4\4\1\16\4\2\0%\5\27\0%\0062\0%\a3\0>\4\4\1\16\4\2\0%\5\27\0%\0064\0%\a5\0>\4\4\1\16\4\2\0%\5\27\0%\0066\0%\a7\0>\4\4\1\16\4\2\0%\5\27\0%\0068\0%\a9\0>\4\4\0017\4:\0007\4;\4\15\0\4\0T\5\6Ä\16\4\2\0%\5\27\0%\6<\0%\a=\0>\4\4\1T\4\tÄ7\4:\0007\4>\4\15\0\4\0T\5\5Ä\16\4\2\0%\5\27\0%\6<\0%\a=\0>\4\4\0010\0\0ÄG\0\1\0\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>lf\24document_formatting\26resolved_capabilities2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<Cmd>lua vim.lsp.buf.code_action()<CR>\14<leader>a*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\t<F2>J<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>ll7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>lr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>la.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<A-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\15completion\5\27completion_confirm_key\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list#completion_matching_smart_case.imap <c-space> <Plug>(completion_trigger)0imap <s-tab> <Plug>(completion_smart_s_tab),imap <tab> <Plug>(completion_smart_tab)\bCmd!completion_enable_auto_popup%completion_enable_auto_signature\6g\30menuone,noinsert,noselect\16completeopt\bopt\bvim\17handler_opts\1\0\1\vborder\tnone\1\0\3\16hint_enable\1\17hi_parameter\tTodo\tbind\2\14on_attach\18lsp_signature\frequireö\5\1\0\n\0\"\0:4\0\0\0%\1\1\0>\0\2\0021\1\2\0003\2\3\0004\3\4\0\16\4\2\0>\3\2\4T\6\5Ä6\b\a\0007\b\5\b3\t\6\0:\1\a\t>\b\2\1A\6\3\3N\6˘7\3\b\0007\3\5\0033\4\f\0003\5\n\0003\6\t\0:\6\v\5:\5\r\4:\1\a\4>\3\2\0017\3\14\0007\3\5\0033\4\24\0003\5\22\0003\6\18\0003\a\16\0003\b\15\0:\b\17\a:\a\19\0063\a\20\0:\a\21\6:\6\23\5:\5\25\4:\1\a\4>\3\2\0014\3\0\0%\4\26\0>\3\2\0027\3\5\0033\4\28\0003\5\27\0:\5\29\0043\5\31\0003\6\30\0:\6 \5:\1\a\5:\5\1\4>\3\2\0027\4!\0007\4\5\4\16\5\3\0>\4\2\1G\0\1\0\16sumneko_lua\bcmd\1\0\0\1\2\0\0!/usr/bin/lua-language-server\flibrary\1\0\0\1\0\1\15vimruntime\1\flua-dev\rsettings\1\0\0\nlatex\1\0\0\tlint\1\0\1\ronChange\2\nbuild\1\0\0\targs\1\0\2\20outputDirectory\f./build\vonSave\2\1\6\0\0\t-pdf\29-interaction=nonstopmode\15-synctex=1\20-outdir=./build\a%f\vtexlab\17init_options\1\0\0\14highlight\1\0\0\1\0\1\rlsRanges\2\tccls\14on_attach\1\0\0\nsetup\vipairs\1\r\0\0\vbashls\nvimls\fpyright\rtsserver\nvuels\vyamlls\vjsonls\ncmake\ngopls\17intelephense\ncssls\thtml\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\1\2æ\5\0\0\3\0\23\0A4\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\5\0>\1\2\0027\1\6\1:\1\3\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\t\1:\1\a\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\v\1:\1\n\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\r\1:\1\f\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\15\1:\1\14\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\17\1:\1\16\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\20\1:\1\18\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\22\1:\1\21\0G\0\1\0\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-luapad"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-luapad"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2—\t\0\0\6\0006\0=4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0003\4\a\0:\4\b\3:\3\t\0023\3\n\0:\3\v\0023\3\f\0003\4\r\0:\4\14\0033\4\15\0:\4\16\3:\3\17\0023\3\18\0003\4\19\0:\4\20\3:\3\21\0023\3\22\0:\3\23\0023\3\26\0003\4\24\0003\5\25\0:\5\b\4:\4\27\0033\4\28\0003\5\29\0:\5\30\0043\5\31\0:\5 \4:\4!\0033\4\"\0003\5#\0:\5$\0043\5%\0:\5&\0043\5'\0:\5(\0043\5)\0:\5*\4:\4+\3:\3,\0023\3-\0003\4.\0:\4\b\3:\3/\2>\1\2\0014\0010\0007\0011\1%\0023\0:\0022\0014\0010\0007\0011\1%\0025\0:\0024\1G\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\17textsubjects\1\0\2\6.\23textsubjects-smart\6;\21textsubjects-big\1\0\1\venable\2\16textobjects\tmove\22goto_previous_end\1\0\2\a[C\17@class.outer\a[F\20@function.outer\24goto_previous_start\1\0\2\a[c\17@class.outer\a[f\20@function.outer\18goto_next_end\1\0\2\a]C\17@class.outer\a]F\20@function.outer\20goto_next_start\1\0\2\a]c\17@class.outer\a]f\20@function.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\14<leader>,\21@parameter.inner\14swap_next\1\0\1\14<leader>.\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\b\aac\17@class.outer\aaf\20@function.outer\aal\16@loop.outer\aif\20@function.inner\ail\16@loop.inner\aic\17@class.inner\aab\17@block.outer\aib\17@block.inner\1\0\1\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\vconfig\1\0\1\tfish\t# %s\1\0\1\venable\2\frainbow\vcolors\1\4\0\0\f#d900ff\f#00ffd9\f#ffd700\fdisable\1\2\0\0\thtml\1\0\2\18extended_mode\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
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
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["presence.nvim"] = {
    config = { "\27LJ\1\2>\0\0\3\0\3\0\b4\0\0\0%\1\1\0>\0\2\2\16\1\0\0007\0\2\0002\2\0\0>\0\3\1G\0\1\0\nsetup\rpresence\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  ["qt-support.vim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/qt-support.vim"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/registers.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\1\2C\0\0\4\0\4\0\0064\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\1G\0\1\0\24:SymbolsOutline<CR>\14<leader>;\6n\bMap\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { '\27LJ\1\2Î\6\0\0\4\0\25\00094\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\3\0%\1\4\0%\2\5\0%\3\6\0>\0\4\0014\0\3\0%\1\4\0%\2\a\0%\3\b\0>\0\4\0014\0\3\0%\1\4\0%\2\t\0%\3\n\0>\0\4\0014\0\3\0%\1\4\0%\2\v\0%\3\f\0>\0\4\0014\0\3\0%\1\4\0%\2\r\0%\3\14\0>\0\4\0014\0\3\0%\1\4\0%\2\15\0%\3\16\0>\0\4\0014\0\3\0%\1\4\0%\2\17\0%\3\18\0>\0\4\0014\0\3\0%\1\4\0%\2\19\0%\3\20\0>\0\4\0014\0\3\0%\1\4\0%\2\21\0%\3\22\0>\0\4\0014\0\3\0%\1\4\0%\2\23\0%\3\24\0>\0\4\1G\0\1\0\23:TodoTelescope<CR>\14<leader>uJ<cmd>lua require("telescope.builtin").lsp_workspace_diagnostics()<CR>\14<leader>d9<cmd>lua require("telescope.builtin").commands()<CR>\t<F1>J<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>\n<C-f>N<cmd>lua require("telescope.builtin").lsp_dynamic_workspace_symbols()<CR>\14<leader>RE<cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>\14<leader>r6<cmd>lua require("telescope.builtin").marks()<CR>\14<leader>m8<cmd>lua require("telescope.builtin").buffers()<CR>\14<leader>o3<cmd>lua require("telescope.builtin").fd()<CR>\14<leader>f\23<cmd>Telescope<CR>\14<leader>t\6n\bMap\nsetup\14telescope\frequire\0' },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2 \3\0\0\5\0\24\0\0314\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\a\0003\3\4\0003\4\5\0:\4\6\3:\3\b\0023\3\t\0:\3\n\0023\3\v\0003\4\f\0:\4\6\3:\3\r\0023\3\14\0003\4\15\0:\4\6\3:\3\16\0023\3\17\0003\4\18\0:\4\6\3:\3\19\0023\3\20\0003\4\21\0:\4\6\3:\3\22\2:\2\23\1>\0\2\1G\0\1\0\rkeywords\tNOTE\1\2\0\0\tINFO\1\0\2\ncolor\thint\ticon\tÔ°ß \tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\tÔãù \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ncolor\fwarning\ticon\tÔÅ± \tHACK\1\4\0\0\tFUCK\tSHIT\bBAD\1\0\2\ncolor\fwarning\ticon\tÔíê \tTODO\1\0\2\ncolor\tinfo\ticon\tÔÅò \bFIX\1\0\0\balt\1\6\0\0\nFIXME\bBUG\nFIXIT\bFIX\nISSUE\1\0\2\ncolor\nerror\ticon\tÔÜà \1\0\1\nsigns\1\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  vim = {
    config = { "\27LJ\1\2¿\1\0\0\2\0\5\0\r4\0\0\0%\1\1\0>\0\2\0014\0\0\0%\1\2\0>\0\2\0014\0\0\0%\1\3\0>\0\2\0014\0\0\0%\1\4\0>\0\2\1G\0\1\0 hi IndentLine guifg=#44475a9hi CursorLineNr guifg=#F1FA8C guibg=#21222C gui=none hi CursorLine guibg=#21222C\24colorscheme dracula\bCmd\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-highlightedyank"] = {
    config = { "\27LJ\1\2D\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1˙\0:\1\2\0G\0\1\0'highlightedyank_highlight_duration\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-highlightedyank"
  },
  ["vim-lsp-cxx-highlight"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-lsp-cxx-highlight"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\1\2¿\1\0\0\2\0\6\0\0174\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0004\0\0\0007\0\1\0'\1\2\0:\1\5\0G\0\1\0&vim_markdown_new_list_item_indent\29vim_markdown_frontmatter\31vim_markdown_follow_anchor\29vim_markdown_toc_autofit\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-startify"] = {
    config = { "\27LJ\1\2·\2\0\0\a\0\18\0\"4\0\0\0007\0\1\0002\1\3\0003\2\3\0002\3\3\0%\4\4\0004\5\0\0007\5\5\0057\5\6\5>\5\1\2%\6\a\0$\4\6\4;\4\1\3:\3\b\2;\2\1\0013\2\t\0003\3\n\0:\3\b\2;\2\2\1:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\v\0004\0\0\0007\0\1\0%\1\r\0:\1\f\0004\0\14\0%\1\15\0%\2\16\0%\3\17\0>\0\4\1G\0\1\0\18:Startify<CR>\14<leader>s\6n\bMap+startify#pad(startify#fortune#boxed())\27startify_custom_header!startify_fortune_use_unicode\1\2\0\0\17MRU [global]\1\0\1\ttype\nfiles\vheader\6]\vgetcwd\afn\nMRU [\1\0\1\ttype\bdir\19startify_lists\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  vimtex = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2—\t\0\0\6\0006\0=4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0003\4\a\0:\4\b\3:\3\t\0023\3\n\0:\3\v\0023\3\f\0003\4\r\0:\4\14\0033\4\15\0:\4\16\3:\3\17\0023\3\18\0003\4\19\0:\4\20\3:\3\21\0023\3\22\0:\3\23\0023\3\26\0003\4\24\0003\5\25\0:\5\b\4:\4\27\0033\4\28\0003\5\29\0:\5\30\0043\5\31\0:\5 \4:\4!\0033\4\"\0003\5#\0:\5$\0043\5%\0:\5&\0043\5'\0:\5(\0043\5)\0:\5*\4:\4+\3:\3,\0023\3-\0003\4.\0:\4\b\3:\3/\2>\1\2\0014\0010\0007\0011\1%\0023\0:\0022\0014\0010\0007\0011\1%\0025\0:\0024\1G\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\17textsubjects\1\0\2\6.\23textsubjects-smart\6;\21textsubjects-big\1\0\1\venable\2\16textobjects\tmove\22goto_previous_end\1\0\2\a[C\17@class.outer\a[F\20@function.outer\24goto_previous_start\1\0\2\a[c\17@class.outer\a[f\20@function.outer\18goto_next_end\1\0\2\a]C\17@class.outer\a]F\20@function.outer\20goto_next_start\1\0\2\a]c\17@class.outer\a]f\20@function.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\14<leader>,\21@parameter.inner\14swap_next\1\0\1\14<leader>.\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\b\aac\17@class.outer\aaf\20@function.outer\aal\16@loop.outer\aif\20@function.inner\ail\16@loop.inner\aic\17@class.inner\aab\17@block.outer\aib\17@block.inner\1\0\1\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\vconfig\1\0\1\tfish\t# %s\1\0\1\venable\2\frainbow\vcolors\1\4\0\0\f#d900ff\f#00ffd9\f#ffd700\fdisable\1\2\0\0\thtml\1\0\2\18extended_mode\2\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-highlightedyank
time([[Config for vim-highlightedyank]], true)
try_loadstring("\27LJ\1\2D\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1˙\0:\1\2\0G\0\1\0'highlightedyank_highlight_duration\6g\bvim\0", "config", "vim-highlightedyank")
time([[Config for vim-highlightedyank]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\2¥\2\0\0\2\0\n\0\0214\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0004\0\0\0007\0\1\0)\1\1\0:\1\6\0004\0\0\0007\0\1\0)\1\2\0:\1\a\0004\0\0\0007\0\1\0003\1\t\0:\1\b\0G\0\1\0\1\4\0\0\rmarkdown\btex\rstartify&indent_blankline_filetype_exclude$indent_blankline_use_treesitter-indent_blankline_show_first_indent_level\1\2\0\0\15IndentLine)indent_blankline_char_highlight_list\b‚ñè\26indent_blankline_char\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2J\0\0\1\0\5\1\v4\0\0\0007\0\1\0007\0\2\0\t\0\0\0T\0\3Ä%\0\3\0H\0\2\0T\0\2Ä%\0\4\0H\0\2\0G\0\1\0\aru\aus\riminsert\abo\bvim\0˘\3\1\0\a\0\30\0#1\0\0\0004\1\1\0%\2\2\0>\1\2\0027\1\3\0013\2\t\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\3:\3\n\0023\3\f\0003\4\v\0;\0\2\4:\4\r\0033\4\14\0:\4\15\0033\4\16\0003\5\17\0003\6\18\0:\6\19\0053\6\20\0:\6\21\5;\5\2\4:\4\22\0033\4\23\0:\4\24\0033\4\25\0:\4\26\0033\4\27\0:\4\28\3:\3\29\2>\1\2\1G\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\fsymbols\1\0\4\thint\tÔ†¥ \tinfo\tÔÅö \twarn\tÔÅô \nerror\tÔÅ± \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\3\0\0\6|\6|\23section_separators\1\3\0\0\5\5\1\0\2\18icons_enabled\2\ntheme\fdracula\nsetup\flualine\frequire\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\1\2˝\2\0\0\4\0\17\0*4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\3\0%\1\4\0%\2\5\0%\3\6\0>\0\4\0014\0\3\0%\1\4\0%\2\a\0%\3\b\0>\0\4\0014\0\3\0%\1\4\0%\2\t\0%\3\b\0>\0\4\0014\0\3\0%\1\4\0%\2\n\0%\3\v\0>\0\4\0014\0\3\0%\1\4\0%\2\f\0%\3\v\0>\0\4\0014\0\3\0%\1\4\0%\2\r\0%\3\14\0>\0\4\0014\0\3\0%\1\4\0%\2\15\0%\3\16\0>\0\4\1G\0\1\0+<cmd>lua require'hop'.hint_char2()<cr>\ass+<cmd>lua require'hop'.hint_char1()<cr>\asf\ask+<cmd>lua require'hop'.hint_lines()<cr>\asj\ash+<cmd>lua require'hop'.hint_words()<cr>\asl\n<NOP>\6s\6n\bMap\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring('\27LJ\1\2Ï\3\0\0\5\0\18\0"4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\2>\1\2\0014\1\6\0%\2\a\0%\3\b\0%\4\t\0>\1\4\0014\1\6\0%\2\a\0%\3\n\0%\4\v\0>\1\4\0014\1\6\0%\2\a\0%\3\f\0%\4\r\0>\1\4\0014\1\6\0%\2\a\0%\3\14\0%\4\15\0>\1\4\0014\1\6\0%\2\a\0%\3\16\0%\4\17\0>\1\4\1G\0\1\0001:lua require("bufferline").pick_buffer()<CR>\agb+:lua require("bufferline").move(1)<CR>\6L,:lua require("bufferline").move(-1)<CR>\6H,:lua require("bufferline").cycle(1)<CR>\n<C-l>-:lua require("bufferline").cycle(-1)<CR>\n<C-h>\6n\bMap\foptions\1\0\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\rmappings\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0', "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring('\27LJ\1\2Î\6\0\0\4\0\25\00094\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\3\0%\1\4\0%\2\5\0%\3\6\0>\0\4\0014\0\3\0%\1\4\0%\2\a\0%\3\b\0>\0\4\0014\0\3\0%\1\4\0%\2\t\0%\3\n\0>\0\4\0014\0\3\0%\1\4\0%\2\v\0%\3\f\0>\0\4\0014\0\3\0%\1\4\0%\2\r\0%\3\14\0>\0\4\0014\0\3\0%\1\4\0%\2\15\0%\3\16\0>\0\4\0014\0\3\0%\1\4\0%\2\17\0%\3\18\0>\0\4\0014\0\3\0%\1\4\0%\2\19\0%\3\20\0>\0\4\0014\0\3\0%\1\4\0%\2\21\0%\3\22\0>\0\4\0014\0\3\0%\1\4\0%\2\23\0%\3\24\0>\0\4\1G\0\1\0\23:TodoTelescope<CR>\14<leader>uJ<cmd>lua require("telescope.builtin").lsp_workspace_diagnostics()<CR>\14<leader>d9<cmd>lua require("telescope.builtin").commands()<CR>\t<F1>J<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>\n<C-f>N<cmd>lua require("telescope.builtin").lsp_dynamic_workspace_symbols()<CR>\14<leader>RE<cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>\14<leader>r6<cmd>lua require("telescope.builtin").marks()<CR>\14<leader>m8<cmd>lua require("telescope.builtin").buffers()<CR>\14<leader>o3<cmd>lua require("telescope.builtin").fd()<CR>\14<leader>f\23<cmd>Telescope<CR>\14<leader>t\6n\bMap\nsetup\14telescope\frequire\0', "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: emmet-vim
time([[Config for emmet-vim]], true)
try_loadstring("\27LJ\1\2_\0\0\2\0\6\0\t4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0%\1\5\0:\1\4\0G\0\1\0\n<A-m>\26user_emmet_leader_key\6i\20user_emmet_mode\6g\bvim\0", "config", "emmet-vim")
time([[Config for emmet-vim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\2x\0\0\3\0\t\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\0013\2\b\0>\0\3\1G\0\1\0\1\0\1\nnames\1\tscss\1\0\1\bscc\2\bcss\1\0\1\bcss\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: lsp-rooter.nvim
time([[Config for lsp-rooter.nvim]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\15lsp-rooter\frequire\0", "config", "lsp-rooter.nvim")
time([[Config for lsp-rooter.nvim]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\1\2¿\1\0\0\2\0\6\0\0174\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0004\0\0\0007\0\1\0'\1\2\0:\1\5\0G\0\1\0&vim_markdown_new_list_item_indent\29vim_markdown_frontmatter\31vim_markdown_follow_anchor\29vim_markdown_toc_autofit\6g\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
-- Config for: due.nvim
time([[Config for due.nvim]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\rdue_nvim\frequire\0", "config", "due.nvim")
time([[Config for due.nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\1\0024\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2 \3\0\0\5\0\24\0\0314\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\a\0003\3\4\0003\4\5\0:\4\6\3:\3\b\0023\3\t\0:\3\n\0023\3\v\0003\4\f\0:\4\6\3:\3\r\0023\3\14\0003\4\15\0:\4\6\3:\3\16\0023\3\17\0003\4\18\0:\4\6\3:\3\19\0023\3\20\0003\4\21\0:\4\6\3:\3\22\2:\2\23\1>\0\2\1G\0\1\0\rkeywords\tNOTE\1\2\0\0\tINFO\1\0\2\ncolor\thint\ticon\tÔ°ß \tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\1\ticon\tÔãù \tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ncolor\fwarning\ticon\tÔÅ± \tHACK\1\4\0\0\tFUCK\tSHIT\bBAD\1\0\2\ncolor\fwarning\ticon\tÔíê \tTODO\1\0\2\ncolor\tinfo\ticon\tÔÅò \bFIX\1\0\0\balt\1\6\0\0\nFIXME\bBUG\nFIXIT\bFIX\nISSUE\1\0\2\ncolor\nerror\ticon\tÔÜà \1\0\1\nsigns\1\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\1\2C\0\0\4\0\4\0\0064\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\1G\0\1\0\24:SymbolsOutline<CR>\14<leader>;\6n\bMap\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: nvim-lsputils
time([[Config for nvim-lsputils]], true)
try_loadstring("\27LJ\1\2æ\5\0\0\3\0\23\0A4\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\5\0>\1\2\0027\1\6\1:\1\3\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\t\1:\1\a\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\v\1:\1\n\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\r\1:\1\f\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\15\1:\1\14\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\b\0>\1\2\0027\1\17\1:\1\16\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\20\1:\1\18\0004\0\0\0007\0\1\0007\0\2\0004\1\4\0%\2\19\0>\1\2\0027\1\22\1:\1\21\0G\0\1\0\22workspace_handler\21workspace/symbol\21document_handler\20lsputil.symbols textDocument/documentSymbol\27implementation_handler textDocument/implementation\27typeDefinition_handler textDocument/typeDefinition\24declaration_handler\29textDocument/declaration\23definition_handler\28textDocument/definition\23references_handler\22lsputil.locations\28textDocument/references\24code_action_handler\23lsputil.codeAction\frequire\28textDocument/codeAction\rhandlers\blsp\bvim\0", "config", "nvim-lsputils")
time([[Config for nvim-lsputils]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\1\2·\2\0\0\a\0\18\0\"4\0\0\0007\0\1\0002\1\3\0003\2\3\0002\3\3\0%\4\4\0004\5\0\0007\5\5\0057\5\6\5>\5\1\2%\6\a\0$\4\6\4;\4\1\3:\3\b\2;\2\1\0013\2\t\0003\3\n\0:\3\b\2;\2\2\1:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\v\0004\0\0\0007\0\1\0%\1\r\0:\1\f\0004\0\14\0%\1\15\0%\2\16\0%\3\17\0>\0\4\1G\0\1\0\18:Startify<CR>\14<leader>s\6n\bMap+startify#pad(startify#fortune#boxed())\27startify_custom_header!startify_fortune_use_unicode\1\2\0\0\17MRU [global]\1\0\1\ttype\nfiles\vheader\6]\vgetcwd\afn\nMRU [\1\0\1\ttype\bdir\19startify_lists\6g\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: vim
time([[Config for vim]], true)
try_loadstring("\27LJ\1\2¿\1\0\0\2\0\5\0\r4\0\0\0%\1\1\0>\0\2\0014\0\0\0%\1\2\0>\0\2\0014\0\0\0%\1\3\0>\0\2\0014\0\0\0%\1\4\0>\0\2\1G\0\1\0 hi IndentLine guifg=#44475a9hi CursorLineNr guifg=#F1FA8C guibg=#21222C gui=none hi CursorLine guibg=#21222C\24colorscheme dracula\bCmd\0", "config", "vim")
time([[Config for vim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2e\0\3\n\1\4\0\v3\3\0\0004\4\1\0007\4\2\0047\4\3\4+\5\0\0\16\6\0\0\16\a\1\0\16\b\2\0\16\t\3\0>\4\6\1G\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimΩ\15\1\2\b\0?\0î\0014\2\0\0%\3\1\0>\2\2\0027\2\2\0023\3\3\0003\4\4\0:\4\5\3>\2\2\0014\2\6\0007\2\a\2%\3\t\0:\3\b\0024\2\6\0007\2\n\2'\3\0\0:\3\v\0024\2\6\0007\2\n\2'\3\0\0:\3\f\0024\2\r\0%\3\14\0>\2\2\0014\2\r\0%\3\15\0>\2\2\0014\2\r\0%\3\16\0>\2\2\0014\2\6\0007\2\n\2'\3\1\0:\3\17\0024\2\6\0007\2\n\0023\3\19\0:\3\18\0024\2\6\0007\2\n\2%\3\21\0:\3\20\0024\2\0\0%\3\22\0>\2\2\0027\2\2\2>\2\1\0011\2\23\0001\3\24\0\16\4\3\0%\5\25\0%\6\26\0>\4\3\1\16\4\2\0%\5\27\0%\6\28\0%\a\29\0>\4\4\1\16\4\2\0%\5\27\0%\6\30\0%\a\31\0>\4\4\1\16\4\2\0%\5\27\0%\6 \0%\a!\0>\4\4\1\16\4\2\0%\5\27\0%\6\"\0%\a#\0>\4\4\1\16\4\2\0%\5\27\0%\6$\0%\a%\0>\4\4\1\16\4\2\0%\5\27\0%\6&\0%\a'\0>\4\4\1\16\4\2\0%\5\27\0%\6(\0%\a)\0>\4\4\1\16\4\2\0%\5\27\0%\6*\0%\a+\0>\4\4\1\16\4\2\0%\5\27\0%\6,\0%\a-\0>\4\4\1\16\4\2\0%\5\27\0%\6.\0%\a/\0>\4\4\1\16\4\2\0%\5\27\0%\0060\0%\a1\0>\4\4\1\16\4\2\0%\5\27\0%\0062\0%\a3\0>\4\4\1\16\4\2\0%\5\27\0%\0064\0%\a5\0>\4\4\1\16\4\2\0%\5\27\0%\0066\0%\a7\0>\4\4\1\16\4\2\0%\5\27\0%\0068\0%\a9\0>\4\4\0017\4:\0007\4;\4\15\0\4\0T\5\6Ä\16\4\2\0%\5\27\0%\6<\0%\a=\0>\4\4\1T\4\tÄ7\4:\0007\4>\4\15\0\4\0T\5\5Ä\16\4\2\0%\5\27\0%\6<\0%\a=\0>\4\4\0010\0\0ÄG\0\1\0\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>lf\24document_formatting\26resolved_capabilities2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e+<Cmd>lua vim.lsp.buf.code_action()<CR>\14<leader>a*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\t<F2>J<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>ll7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>lr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>la.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<A-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\15completion\5\27completion_confirm_key\1\5\0\0\nexact\14substring\nfuzzy\ball&completion_matching_strategy_list#completion_matching_smart_case.imap <c-space> <Plug>(completion_trigger)0imap <s-tab> <Plug>(completion_smart_s_tab),imap <tab> <Plug>(completion_smart_tab)\bCmd!completion_enable_auto_popup%completion_enable_auto_signature\6g\30menuone,noinsert,noselect\16completeopt\bopt\bvim\17handler_opts\1\0\1\vborder\tnone\1\0\3\16hint_enable\1\17hi_parameter\tTodo\tbind\2\14on_attach\18lsp_signature\frequireö\5\1\0\n\0\"\0:4\0\0\0%\1\1\0>\0\2\0021\1\2\0003\2\3\0004\3\4\0\16\4\2\0>\3\2\4T\6\5Ä6\b\a\0007\b\5\b3\t\6\0:\1\a\t>\b\2\1A\6\3\3N\6˘7\3\b\0007\3\5\0033\4\f\0003\5\n\0003\6\t\0:\6\v\5:\5\r\4:\1\a\4>\3\2\0017\3\14\0007\3\5\0033\4\24\0003\5\22\0003\6\18\0003\a\16\0003\b\15\0:\b\17\a:\a\19\0063\a\20\0:\a\21\6:\6\23\5:\5\25\4:\1\a\4>\3\2\0014\3\0\0%\4\26\0>\3\2\0027\3\5\0033\4\28\0003\5\27\0:\5\29\0043\5\31\0003\6\30\0:\6 \5:\1\a\5:\5\1\4>\3\2\0027\4!\0007\4\5\4\16\5\3\0>\4\2\1G\0\1\0\16sumneko_lua\bcmd\1\0\0\1\2\0\0!/usr/bin/lua-language-server\flibrary\1\0\0\1\0\1\15vimruntime\1\flua-dev\rsettings\1\0\0\nlatex\1\0\0\tlint\1\0\1\ronChange\2\nbuild\1\0\0\targs\1\0\2\20outputDirectory\f./build\vonSave\2\1\6\0\0\t-pdf\29-interaction=nonstopmode\15-synctex=1\20-outdir=./build\a%f\vtexlab\17init_options\1\0\0\14highlight\1\0\0\1\0\1\rlsRanges\2\tccls\14on_attach\1\0\0\nsetup\vipairs\1\r\0\0\vbashls\nvimls\fpyright\rtsserver\nvuels\vyamlls\vjsonls\ncmake\ngopls\17intelephense\ncssls\thtml\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: presence.nvim
time([[Config for presence.nvim]], true)
try_loadstring("\27LJ\1\2>\0\0\3\0\3\0\b4\0\0\0%\1\1\0>\0\2\2\16\1\0\0007\0\2\0002\2\0\0>\0\3\1G\0\1\0\nsetup\rpresence\frequire\0", "config", "presence.nvim")
time([[Config for presence.nvim]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
