local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  highlight = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gn',
      node_incremental = 'gn',
      node_decremental = 'gr'
    }
  },

  indent = { enable = true },

  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = true,
    colors = { "#d900ff", "#00ffd9", "#ffd700" }
    -- "#00d7ff",
  },

  context_commentstring = { enable = true, config = { fish = "# %s" } },

  autotag = { enable = true },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner"
      }
    },
    swap = {
      enable = true,
      swap_next = { ["<leader>."] = "@parameter.inner" },
      swap_previous = { ["<leader>,"] = "@parameter.inner" }
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
      goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[c"] = "@class.outer"
      },
      goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" }
    }
  },

  textsubjects = {
    enable = true,
    keymaps = { ['.'] = 'textsubjects-smart', [';'] = 'textsubjects-big' }
  }
}

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
