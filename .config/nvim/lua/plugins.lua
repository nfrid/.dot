-- TODO: https://github.com/nvim-telescope/telescope.nvim
vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
  local use = require('packer').use
  use { 'wbthomason/packer.nvim', opt = true }

  use {
    'dracula/vim',
    config = function()
      Cmd('colorscheme dracula')
      Set.cursorline = true
      Cmd('hi CursorLine guibg=#343746')
    end
  }
  use {
    'mhinz/vim-startify',
    config = function() Map('n', '<leader>s', ':Startify<CR>') end
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

      local function keymap()
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
  use 'pacha/vem-tabline'
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
    'machakann/vim-highlightedyank',
    config = function() vim.g.highlightedyank_highlight_duration = 250 end
  }

  use {
    'reedes/vim-pencil',
    config = function()
      Cmd('let pencil#wrapModeDefault = "soft"')
      Cmd('let g:pencil#conceallevel = 0')
      Map('n', '<leader>pp', ':TogglePencil<CR>')
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
          { cmd = { 'prettier -w', 'eslint --fix' } }
        },
        typescript = {
          { cmd = { 'prettier -w', 'eslint --fix' } }
        },
        json = {
          { cmd = { 'prettier -w'} }
        },
        cmake = { { cmd = { 'cmake-format -i' } } },
        -- c = { { cmd = { 'clang-format -i' } } },
        cpp = { { cmd = { 'clang-format -i' } } },
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
      -- Exe([[
      -- augroup Format
      -- autocmd!
      -- autocmd BufWritePost * FormatWrite
      -- augroup END
      --   ]], true)
      Map('n', '<leader>F', ':FormatWrite<CR>')
    end
  }

  use {
    'numtostr/FTerm.nvim',
    config = function()
      Map('n', '<M-r>', '<CMD>lua require"FTerm".toggle()<CR>')
      Map('t', '<M-r>', '<C-\\><C-n><CMD>lua require"FTerm".toggle()<CR>')
    end
  }
  -- use {
  --   'junegunn/fzf.vim',
  --   requires = { 'junegunn/fzf', opt = true },
  --   config = function()
  --     Map('n', '<leader>f', ':Files<CR>')
  --     Map('n', '<leader>o', ':Buffers<CR>')
  --     Map('n', '<leader>g', ':Rg<CR>')
  --     Map('n', '<C-f>', ':BLines<CR>')
  --   end
  -- }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('telescope').setup { defaults = { initial_mode = "normal" } }
      Map('n', '<leader>f',
          '<cmd>lua require("telescope.builtin").file_browser()<CR>')
      Map('n', '<leader>o',
          '<cmd>lua require("telescope.builtin").buffers()<CR>')
      Map('n', '<leader>t',
          '<cmd>lua require("telescope.builtin").treesitter()<CR>')
      Map('n', '<C-f>',
          '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>i')
      Map('n', '<F1>', '<cmd>lua require("telescope.builtin").commands()<CR>')
      Map('n', '<leader>D',
          '<cmd>lua require("telescope.builtin").lsp_diagnostics()<CR>')
    end
  }

  use {
    'b3nj5m1n/kommentary',
    config = function()
      -- require('kommentary.config').use_extended_mappings()
      require('kommentary.config').configure_language("default", {
        prefer_single_line_comments = true
      })
      -- require('kommentary.config').configure_language("rust", {
      --   single_line_comment_string = "//",
      --   multi_line_comment_strings = {"/*", "*/"},
      -- })
    end
  }
  use 'tpope/vim-surround'
  use 'jiangmiao/auto-pairs'
  use 'kana/vim-repeat'
  use 'junegunn/vim-peekaboo'

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
    'mattn/emmet-vim',
    config = function()
      vim.g.user_emmet_mode = 'i'
      vim.g.user_emmet_leader_key = '<A-m>'
    end
  }
  use {
    'SirVer/ultisnips',
    requires = {
      { 'honza/vim-snippets', opt = true },
      { 'epilande/vim-es2015-snippets', opt = true },
      { 'epilande/vim-react-snippets', opt = true }
    }
  }
  use {
    'RishabhRD/nvim-lsputils',
    requires = { 'RishabhRD/popfix', opt = true },
    config = function()
      vim.lsp.handlers['textDocument/codeAction'] =
          require'lsputil.codeAction'.code_action_handler
      vim.lsp.handlers['textDocument/references'] =
          require'lsputil.locations'.references_handler
      vim.lsp.handlers['textDocument/definition'] =
          require'lsputil.locations'.definition_handler
      vim.lsp.handlers['textDocument/declaration'] =
          require'lsputil.locations'.declaration_handler
      vim.lsp.handlers['textDocument/typeDefinition'] =
          require'lsputil.locations'.typeDefinition_handler
      vim.lsp.handlers['textDocument/implementation'] =
          require'lsputil.locations'.implementation_handler
      vim.lsp.handlers['textDocument/documentSymbol'] =
          require'lsputil.symbols'.document_handler
      vim.lsp.handlers['workspace/symbol'] =
          require'lsputil.symbols'.workspace_handler
    end
  }
  use {
    'neovim/nvim-lspconfig',
    requires = { 'nvim-lua/completion-nvim', opt = true },
    config = function()
      local nvim_lsp = require('lspconfig')

      local on_attach = function(client, bufnr)
        require('completion').on_attach()
        -- cmd('inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"')
        -- cmd('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')
        -- cmd('inoremap <expr> <C-j>   pumvisible() ? "\\<C-n>" : "\\<C-j>"')
        -- cmd('inoremap <expr> <C-k>   pumvisible() ? "\\<C-p>" : "\\<C-k>"')
        Set.completeopt = "menuone,noinsert,noselect"
        -- set.shortmess += "c"
        vim.g.completion_enable_auto_popup = 0
        Cmd('imap <tab> <Plug>(completion_smart_tab)')
        Cmd('imap <s-tab> <Plug>(completion_smart_s_tab)')
        -- Cmd('imap <silent> <c-p> <Plug>(completion_trigger)')
        -- Cmd('imap <silent> <c-n> <Plug>(completion_trigger)')
        vim.g.completion_matching_smart_case = 1
        vim.g.completion_matching_strategy_list =
            { 'exact', 'substring', 'fuzzy', 'all' }

        -- possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
        vim.g.completion_enable_snippet = 'UltiSnips'

        local function buf_map(mode, keys, action)
          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(bufnr, mode, keys, action, opts)
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
        buf_map('n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>')

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

      local servers = {
        "bashls", "vimls", "pyright", "tsserver", "vuels", "yamlls", "ccls",
        "jsonls", "cmake"
      }
      for _, lsp in ipairs(servers) do
        nvim_lsp[lsp].setup { on_attach = on_attach }
      end

      nvim_lsp.sumneko_lua.setup {
        cmd = { "/usr/bin/lua-language-server" },
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
            diagnostics = { globals = { 'vim' } },
            workspace = {
              library = {
                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
              }
            }
          }
        },
        on_attach = on_attach
      }
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd [[TSUpdate]] end,
    config = function()
      local treesitter = require('nvim-treesitter.configs')

      treesitter.setup {
        highlight = { enable = true, disable = { 'yaml' } },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = 'gn',
            node_incremental = 'gn',
            node_decremental = 'gr'
          }
        },
        indent = { enable = true, disable = { 'javascript', 'typescript' } },
        rainbow = { enable = true }
      }

      Set.foldmethod = 'expr'
      Set.foldexpr = 'nvim_treesitter#foldexpr()'
    end
  }
  use 'romgrk/nvim-treesitter-context'
  use {'p00f/nvim-ts-rainbow',
    config = function ()
      Exe([[
        hi rainbowcol1 guifg=#ffd700
        hi rainbowcol2 guifg=#ff00d7
        hi rainbowcol3 guifg=#00ffd7
        hi rainbowcol4 guifg=#d7ff00
        hi rainbowcol5 guifg=#ff7070
        hi rainbowcol6 guifg=#d700ff
        hi rainbowcol7 guifg=#00d7ff
      ]], true)
    end
  }

  use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }
end)
