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
  ["caw.vim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/caw.vim"
  },
  ["format.nvim"] = {
    config = { "\27LJ\2\n’\6\0\0\6\0\30\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\0035\4\23\0005\5\22\0=\5\5\4>\4\2\3=\3\24\0024\3\3\0005\4\26\0005\5\25\0=\5\5\4>\4\1\3=\3\27\2B\0\2\0016\0\28\0'\2\29\0+\3\2\0B\0\3\1K\0\1\0à\1            augroup Format\n            autocmd!\n            autocmd BufWritePost * FormatWrite\n            augroup END\n            \bexe\vpython\1\0\0\1\2\0\0\nblack\rmarkdown\1\0\3\vtarget\fcurrent\18start_pattern\16^```python$\16end_pattern\n^```$\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\blua\1\0\0\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\bvim\1\0\2\18start_pattern\17^lua << EOF$\16end_pattern\n^EOF$\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i \"s/[ \t]*$//\"\nsetup\vformat\frequire\0" },
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
  indentLine = {
    config = { "\27LJ\2\nœ\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\4\0\0\rmarkdown\btex\rstartify\31indentLine_fileTypeExclude\f#44475a\25indentLine_color_gui\28indentLine_conceallevel\b‚ñè\20indentLine_char\6g\bvim\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\1\0\5\1\v6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\3Ä'\0\3\0L\0\2\0X\0\2Ä'\0\4\0L\0\2\0K\0\1\0\aru\aus\riminsert\abo\bvim\0À\2\1\0\4\0\21\0\0266\0\0\0'\2\1\0B\0\2\0025\1\3\0=\1\2\0003\1\4\0007\1\5\0005\1\b\0005\2\a\0006\3\5\0>\3\2\2=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\1=\1\6\0009\1\20\0B\1\1\1K\0\1\0\vstatus\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\vkeymap\0\1\0\2\ntheme\fdracula\18icons_enabled\2\foptions\flualine\frequire\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
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
  vim = {
    config = { "\27LJ\2\nr\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\2\0+\1\2\0=\1\3\0006\0\0\0'\2\4\0B\0\2\1K\0\1\0 hi CursorLine guibg=#343746\15cursorline\bset\24colorscheme dracula\bcmd\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-hexokinase"
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
  ["vim-pencil"] = {
    config = { "\27LJ\2\n†\1\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\22:TogglePencil<CR>\15<leader>pp\6n\bmap\"let g:pencil#conceallevel = 0(let pencil#wrapModeDefault = \"soft\"\bcmd\0" },
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/nf/.local/share/nvim/site/pack/packer/start/vim-repeat"
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
try_loadstring("\27LJ\2\n’\6\0\0\6\0\30\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0005\5\b\0=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0005\5\v\0=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0005\5\14\0=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0005\5\17\0=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0005\5\20\0=\5\5\4>\4\1\0035\4\23\0005\5\22\0=\5\5\4>\4\2\3=\3\24\0024\3\3\0005\4\26\0005\5\25\0=\5\5\4>\4\1\3=\3\27\2B\0\2\0016\0\28\0'\2\29\0+\3\2\0B\0\3\1K\0\1\0à\1            augroup Format\n            autocmd!\n            autocmd BufWritePost * FormatWrite\n            augroup END\n            \bexe\vpython\1\0\0\1\2\0\0\nblack\rmarkdown\1\0\3\vtarget\fcurrent\18start_pattern\16^```python$\16end_pattern\n^```$\1\2\0\0\nblack\1\0\0\1\2\0\0\16prettier -w\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\blua\1\0\0\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\bvim\1\0\2\18start_pattern\17^lua << EOF$\16end_pattern\n^EOF$\1\2\0\0@lua-format --indent-width=2 --spaces-inside-table-braces -i\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i \"s/[ \t]*$//\"\nsetup\vformat\frequire\0", "config", "format.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n‰\2\0\0\6\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\1\2\0016\1\14\0'\2\16\0=\2\15\0016\1\14\0'\2\18\0=\2\17\1K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bset\frainbow\1\0\1\venable\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\3\19init_selection\agn\21node_decremental\agr\21node_incremental\agn\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
-- Config for: fzf.vim
try_loadstring("\27LJ\2\n±\1\0\0\5\0\n\0\0216\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0'\2\1\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0'\2\1\0'\3\b\0'\4\t\0B\0\4\1K\0\1\0\16:BLines<CR>\n<C-f>\f:Rg<CR>\14<leader>g\17:Buffers<CR>\14<leader>o\15:Files<CR>\14<leader>f\6n\bmap\0", "config", "fzf.vim")
-- Config for: indentLine
try_loadstring("\27LJ\2\nœ\1\0\0\2\0\t\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0K\0\1\0\1\4\0\0\rmarkdown\btex\rstartify\31indentLine_fileTypeExclude\f#44475a\25indentLine_color_gui\28indentLine_conceallevel\b‚ñè\20indentLine_char\6g\bvim\0", "config", "indentLine")
-- Config for: vim-markdown
try_loadstring("\27LJ\2\ne\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\31vim_markdown_follow_anchor\29vim_markdown_toc_autofit\6g\bvim\0", "config", "vim-markdown")
-- Config for: vim-startify
try_loadstring("\27LJ\2\n=\0\0\5\0\4\0\0066\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\1K\0\1\0\18:Startify<CR>\14<leader>s\6n\bmap\0", "config", "vim-startify")
-- Config for: vim-markdown-toc
try_loadstring("\27LJ\2\n6\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\6-\23vmt_list_item_char\6g\bvim\0", "config", "vim-markdown-toc")
-- Config for: vim
try_loadstring("\27LJ\2\nr\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\2\0+\1\2\0=\1\3\0006\0\0\0'\2\4\0B\0\2\1K\0\1\0 hi CursorLine guibg=#343746\15cursorline\bset\24colorscheme dracula\bcmd\0", "config", "vim")
-- Config for: vim-pencil
try_loadstring("\27LJ\2\n†\1\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\22:TogglePencil<CR>\15<leader>pp\6n\bmap\"let g:pencil#conceallevel = 0(let pencil#wrapModeDefault = \"soft\"\bcmd\0", "config", "vim-pencil")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nJ\0\0\1\0\5\1\v6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\3Ä'\0\3\0L\0\2\0X\0\2Ä'\0\4\0L\0\2\0K\0\1\0\aru\aus\riminsert\abo\bvim\0À\2\1\0\4\0\21\0\0266\0\0\0'\2\1\0B\0\2\0025\1\3\0=\1\2\0003\1\4\0007\1\5\0005\1\b\0005\2\a\0006\3\5\0>\3\2\2=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\1=\1\6\0009\1\20\0B\1\1\1K\0\1\0\vstatus\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\vkeymap\0\1\0\2\ntheme\fdracula\18icons_enabled\2\foptions\flualine\frequire\0", "config", "lualine.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
