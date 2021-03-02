vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
  use { 'wbthomason/packer.nvim', opt = true }

  use {
    'dracula/vim',
    config = function()
      cmd('colorscheme dracula')
      set.cursorline = true
      cmd('hi CursorLine guibg=#343746')
    end
  }
  use {
    'mhinz/vim-startify',
    config = function() map('n', '<leader>s', ':Startify<CR>') end
  }
  use {
    "hoob3rt/lualine.nvim",
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      local lualine = require('lualine')

      lualine.options = {
        theme = 'dracula',
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
        lualine_a = { 'mode', keymap },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      }

      lualine.status()
    end
  }
  use {
    'Yggdroot/indentLine',
    config = function()
      vim.g.indentLine_char = '▏'
      vim.g.indentLine_conceallevel = 2
      vim.g.indentLine_color_gui = '#44475a'
      vim.g.indentLine_fileTypeExclude = { 'markdown', 'tex', 'startify' }
    end
  }

  use {
    'reedes/vim-pencil',
    config = function()
      cmd('let pencil#wrapModeDefault = "soft"')
      cmd('let g:pencil#conceallevel = 0')
      map('n', '<leader>pp', ':TogglePencil<CR>')
    end
  }
  use { 'iamcco/markdown-preview.nvim', run = 'cd app & yarn install' }
  use {
    'plasticboy/vim-markdown',
    config = function()
      vim.g.vim_markdown_toc_autofit = 1
      vim.g.vim_markdown_follow_anchor = 1
    end
  }
  use {
    'mzlogin/vim-markdown-toc',
    config = function() vim.g.vmt_list_item_char = '-' end
  }

  use {
    'lukas-reineke/format.nvim',
    config = function()
      require'format'.setup {
        ['*'] = {
          { cmd = { 'sed -i "s/[ \t]*$//"' } } -- remove trailing whitespace
        },
        vim = {
          {
            cmd = {
              'lua-format --indent-width=2 --spaces-inside-table-braces -i'
            },
            start_pattern = '^lua << EOF$',
            end_pattern = '^EOF$'
          }
        },
        lua = {
          {
            cmd = {
              'lua-format --indent-width=2 --spaces-inside-table-braces -i'
            }
          }
        },
        go = {
          { cmd = { "gofmt -w", "goimports -w" }, tempfile_postfix = ".tmp" }
        },
        javascript = {
          { cmd = { 'prettier -w', './node_modules/.bin/eslint --fix' } }
        },
        markdown = {
          { cmd = { 'prettier -w' } }, {
            cmd = { 'black' },
            start_pattern = '^```python$',
            end_pattern = '^```$',
            target = 'current'
          }
        },
        python = { { cmd = { 'black' } } }
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
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', opt = true },
    config = function()
      map('n', '<leader>f', ':Files<CR>')
      map('n', '<leader>o', ':Buffers<CR>')
      map('n', '<leader>g', ':Rg<CR>')
      map('n', '<C-f>', ':BLines<CR>')
    end
  }

  use 'tyru/caw.vim'
  use 'tpope/vim-surround'
  use 'jiangmiao/auto-pairs'
  use 'kana/vim-repeat'

  use 'kana/vim-textobj-user'
  use 'Chun-Yang/vim-textobj-chunk'
  use 'kana/vim-textobj-entire'
  use 'coachshea/vim-textobj-markdown'
  use 'michaeljsmith/vim-indent-object'
  use 'reedes/vim-textobj-sentence'

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- use {
  --   'hrsh7th/vim-vsnip',
  --   requires = { 'hrsh7th/vim-vsnip-integ', opt = true },
  --   config = function() vim.g.vsnip_filetypes = {} end
  -- }
  use {
    'SirVer/ultisnips',
    requires = {
      { 'honza/vim-snippets', opt = true },
      { 'epilande/vim-es2015-snippets', opt = true },
      { 'epilande/vim-react-snippets', opt = true }
    }
  }
  use {
    'neovim/nvim-lspconfig',
    requires = { 'nvim-lua/completion-nvim', opt = true },
    config = function()
      local nvim_lsp = require('lspconfig')

      local on_attach = function(client, bufnr)
        require('completion').on_attach()
        cmd('inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"')
        cmd('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')
        cmd('inoremap <expr> <C-j>   pumvisible() ? "\\<C-n>" : "\\<C-j>"')
        cmd('inoremap <expr> <C-k>   pumvisible() ? "\\<C-p>" : "\\<C-k>"')
        set.completeopt = "menuone,noinsert,noselect"
        -- set.shortmess += "c"
        vim.g.completion_enable_auto_popup = 0
        cmd('imap <tab> <Plug>(completion_smart_tab)')
        cmd('imap <s-tab> <Plug>(completion_smart_s_tab)')
        vim.g.completion_matching_smart_case = 1
        vim.g.completion_matching_strategy_list =
            { 'exact', 'substring', 'fuzzy', 'all' }

        -- possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
        vim.g.completion_enable_snippet = 'UltiSnips'

        local function buf_map(mode, map, cmd)
          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(bufnr, mode, map, cmd, opts)
        end
        local function buf_set(...)
          vim.api.nvim_buf_set_option(bufnr, ...)
        end

        buf_set('omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings
        buf_map('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>')
        buf_map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
        buf_map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
        buf_map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
        buf_map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')

        buf_map('n', '<leader>la',
                '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
        buf_map('n', '<leader>lr',
                '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
        buf_map('n', '<leader>ll',
                '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')

        buf_map('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
        buf_map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
        buf_map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
        buf_map('n', '<leader>e',
                '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')

        buf_map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
        buf_map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
        buf_map('n', '<leader>q',
                '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')

        -- Set some keybinds conditional on server capabilities
        if client.resolved_capabilities.document_formatting then
          buf_map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<CR>")
        elseif client.resolved_capabilities.document_range_formatting then
          buf_map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<CR>")
        end
      end

      local servers = { "vimls", "pyright", "tsserver", "ccls", "cmake" }
      for _, lsp in ipairs(servers) do
        nvim_lsp[lsp].setup { on_attach = on_attach }
      end

      -- nvim_lsp.sumneko_lua.setup {
      --   cmd = { "/usr/bin/lua-language-server" },
      --   settings = {
      --     Lua = {
      --       runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
      --       diagnostics = { globals = { 'vim' } },
      --       workspace = {
      --         library = {
      --           [vim.fn.expand('$VIMRUNTIME/lua')] = true,
      --           [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
      --         }
      --       }
      --     }
      --   },
      --   on_attach = on_attach
      -- }
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd [[TSUpdate]] end,
    config = function()
      local treesitter = require('nvim-treesitter.configs')

      local meme = "lol"

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
        rainbow = { enable = true }
      }

      set.foldmethod = 'expr'
      set.foldexpr = 'nvim_treesitter#foldexpr()'
    end
  }
  use 'romgrk/nvim-treesitter-context'
  use 'p00f/nvim-ts-rainbow'

  use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }
end)
