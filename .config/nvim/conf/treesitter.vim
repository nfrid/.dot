set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gn",
      node_incremental = "gn",
      node_decremental = "gr",
      scope_incremental = "gs",
      scope_decremental = "gS",
    }
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}
EOF

hi rainbowcol1 guifg=#50fa7b
hi rainbowcol2 guifg=#ff79c6
hi rainbowcol3 guifg=#ffb86c
hi rainbowcol4 guifg=#bd93f9
hi rainbowcol5 guifg=#f1fa8c
hi rainbowcol6 guifg=#8be9fd
hi rainbowcol7 guifg=#ff5555
