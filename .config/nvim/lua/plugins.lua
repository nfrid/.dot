vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
  use { "wbthomason/packer.nvim", opt = true }

  use {
    "dracula/vim",
    config = function()
      cmd("colorscheme dracula")
      set.cursorline = true
      cmd("hi CursorLine guibg=#343746")
    end
  }
  use {
    "mhinz/vim-startify",
    config = function() map("n", "<leader>s", ":Startify<CR>") end
  }
  use {
    "hoob3rt/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      local lualine = require("lualine")

      lualine.options = {
        theme = "dracula",
        section_separators = nil,
        component_separators = nil,
        icons_enabled = true
      }

      function keymap()
        if vim.bo.iminsert == 0 then
          return [[us]]
        else
          return [[ru]]
        end
      end

      lualine.sections = {
        lualine_a = { "mode", keymap },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" }
      }

      lualine.status()
    end
  }
  use {
    "Yggdroot/indentLine",
    config = function()
      vim.g.indentLine_char = "▏"
      vim.g.indentLine_conceallevel = 2
      vim.g.indentLine_color_gui = "#44475a"
      vim.g.indentLine_fileTypeExclude = { "markdown", "tex", "startify" }
    end
  }

  use {
    "reedes/vim-pencil",
    config = function()
      cmd("let pencil#wrapModeDefault = 'soft'")
      map("n", "<leader>pp", ":TogglePencil<CR>")
    end
  }
  use { "iamcco/markdown-preview.nvim", run = "cd app & yarn install" }
  -- use 'plasticboy/vim-markdown'
  use "walterl/downtools"

  use {
    "lukas-reineke/format.nvim",
    config = function()
      require"format".setup {
        ["*"] = {
          { cmd = { "sed -i 's/[ \t]*$//'" } } -- remove trailing whitespace
        },
        vim = {
          {
            cmd = {
              "lua-format --indent-width=2 --spaces-inside-table-braces -i"
            },
            start_pattern = "^lua << EOF$",
            end_pattern = "^EOF$"
          }
        },
        lua = {
          {
            cmd = {
              "lua-format --indent-width=2 --spaces-inside-table-braces -i"
            }
          }
        },
        javascript = {
          { cmd = { "prettier -w", "./node_modules/.bin/eslint --fix" } }
        },
        markdown = {
          { cmd = { "prettier -w" } }, {
            cmd = { "black" },
            start_pattern = "^```python$",
            end_pattern = "^```$",
            target = "current"
          }
        }
      }
      exe([[
            augroup Format
            autocmd!
            autocmd BufWritePost * FormatWrite
            augroup END
            ]], true)
    end
  }

  use {
    "junegunn/fzf.vim",
    requires = { "junegunn/fzf", opt = true },
    config = function()
      map("n", "<leader>f", ":Files<CR>")
      map("n", "<leader>o", ":Buffers<CR>")
      map("n", "<leader>g", ":Rg<CR>")
      map("n", "<C-f>", ":BLines<CR>")
    end
  }

  use "tyru/caw.vim"
  use "tpope/vim-surround"
  use "jiangmiao/auto-pairs"
  use "kana/vim-repeat"

  use "kana/vim-textobj-user"
  use "Chun-Yang/vim-textobj-chunk"
  use "kana/vim-textobj-entire"
  use "coachshea/vim-textobj-markdown"
  use "michaeljsmith/vim-indent-object"
  use "reedes/vim-textobj-sentence"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() vim.cmd [[TSUpdate]] end,
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup {
        highlight = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gn",
            node_incremental = "gn",
            node_decremental = "gr"
          }
        },
        indent = { enable = true },
        rainbow = { enable = true }
      }

      set.foldmethod = "expr"
      set.foldexpr = "nvim_treesitter#foldexpr()"
    end
  }
  use "romgrk/nvim-treesitter-context"
  use "p00f/nvim-ts-rainbow"

  use { "rrethy/vim-hexokinase", run = "make hexokinase" }
end)
