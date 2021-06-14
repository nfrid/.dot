vim.cmd('packadd packer.nvim')

Map('n', '<leader>PP', ':PackerCompile<CR>')
Map('n', '<leader>PS', ':PackerSync<CR>')

return require('packer').startup(function()
  local use = require('packer').use
  use { 'wbthomason/packer.nvim', opt = true }
  use 'folke/lsp-colors.nvim'
  use {
    'dracula/vim',
    config = function()
      Cmd('colorscheme dracula')
      Cmd('hi CursorLine guibg=#21222C')
      Cmd('hi CursorLineNr guifg=#F1FA8C guibg=#21222C gui=none')
      Cmd('hi IndentLine guifg=#44475a')
    end
  }
  use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }
  use {
    "hoob3rt/lualine.nvim",
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      local function keymap()
        if vim.bo.iminsert == 0 then
          return [[us]]
        else
          return [[ru]]
        end
      end

      local function lspStatus()
        if not vim.tbl_isempty(vim.lsp.buf_get_clients(0)) then
          local errors = vim.lsp.diagnostic.get_count(0, 'Error')
          local warnings = vim.lsp.diagnostic.get_count(0, 'Warning')
          local infos = vim.lsp.diagnostic.get_count(0, 'Information') +
                            vim.lsp.diagnostic.get_count(0, 'Hint')
          return (errors == 0 and '' or errors .. 'E ') ..
                     (warnings == 0 and '' or warnings .. 'W ') ..
                     (infos == 0 and '' or infos .. 'I ')
        else
          return ''
        end
      end

      require('lualine').setup {
        options = {
          theme = 'dracula',
          section_separators = { '', '' },
          component_separators = { '|', '|' },
          icons_enabled = true
        },
        sections = {
          lualine_a = { 'mode', keymap },
          lualine_b = { 'branch', 'diff' },
          lualine_c = { 'filename', lspStatus },
          lualine_x = { 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        }
      }
    end
  }
  use 'pacha/vem-tabline'
  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = "lua",
    config = function()
      vim.g.indent_blankline_char = '▏'
      vim.g.indent_blankline_char_highlight_list = { "IndentLine" }
      vim.g.indent_blankline_show_first_indent_level = false
      vim.g.indent_blankline_use_treesitter = true
      vim.g.indent_blankline_filetype_exclude =
          { 'markdown', 'tex', 'startify' }
    end
  }
  use {
    'machakann/vim-highlightedyank',
    config = function() vim.g.highlightedyank_highlight_duration = 250 end
  }
  use 'kevinhwang91/nvim-hlslens'

  use {
    'mhinz/vim-startify',
    config = function()
      vim.g.startify_lists = {
        { type = 'dir', header = { "MRU [" .. vim.fn.getcwd() .. "]" } },
        { type = 'files', header = { "MRU [global]" } }
      }
      vim.g.startify_fortune_use_unicode = 1
      vim.g.startify_custom_header = 'startify#pad(startify#fortune#boxed())'
      Map('n', '<leader>s', ':Startify<CR>')
    end
  }

  use {
    'plasticboy/vim-markdown',
    config = function()
      vim.g.vim_markdown_toc_autofit = 1
      vim.g.vim_markdown_follow_anchor = 1
    end
  }
  use 'lervag/vimtex'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('telescope').setup {}
      Map('n', '<leader>t', '<cmd>Telescope<CR>')
      Map('n', '<leader>f', '<cmd>lua require("telescope.builtin").fd()<CR>')
      Map('n', '<leader>o',
          '<cmd>lua require("telescope.builtin").buffers()<CR>')
      Map('n', '<leader>m', '<cmd>lua require("telescope.builtin").marks()<CR>')
      Map('n', '<leader>r',
          '<cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>')
      Map('n', '<leader>R',
          '<cmd>lua require("telescope.builtin").lsp_dynamic_workspace_symbols()<CR>')
      Map('n', '<C-f>',
          '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>')
      Map('n', '<F1>', '<cmd>lua require("telescope.builtin").commands()<CR>')
      Map('n', '<leader>d',
          '<cmd>lua require("telescope.builtin").lsp_workspace_diagnostics()<CR>')
      Map('n', '<leader>u', ':TodoTelescope<CR>')
    end
  }

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'kana/vim-repeat'
  use 'jiangmiao/auto-pairs'
  use 'tversteeg/registers.nvim'
  use {
    'monaqa/dial.nvim',
    config = function()
      Map('n', '<C-a>', '<Plug>(dial-increment)')
      Map('n', '<C-x>', '<Plug>(dial-decrement)')
      Map('v', '<C-a>', '<Plug>(dial-increment)')
      Map('v', '<C-x>', '<Plug>(dial-decrement)')
      Map('v', 'g<C-a>', '<Plug>(dial-increment-additional)')
      Map('v', 'g<C-x>', '<Plug>(dial-decrement-additional)')
    end
  }
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      require'hop'.setup {}

      Map('n', 's', '<NOP>')
      Map("n", "sl", "<cmd>lua require'hop'.hint_words()<cr>")
      Map("n", "sh", "<cmd>lua require'hop'.hint_words()<cr>")
      Map("n", "sj", "<cmd>lua require'hop'.hint_lines()<cr>")
      Map("n", "sk", "<cmd>lua require'hop'.hint_lines()<cr>")
      Map("n", "sf", "<cmd>lua require'hop'.hint_char1()<cr>")
      Map("n", "ss", "<cmd>lua require'hop'.hint_char2()<cr>")
    end
  }

  use 'kana/vim-textobj-user'
  use 'Chun-Yang/vim-textobj-chunk'
  use 'kana/vim-textobj-entire'
  use 'coachshea/vim-textobj-markdown'
  use 'michaeljsmith/vim-indent-object'
  use 'reedes/vim-textobj-sentence'

  use 'fedorenchik/qt-support.vim'

  use {
    'mattn/emmet-vim',
    config = function()
      vim.g.user_emmet_mode = 'i'
      vim.g.user_emmet_leader_key = '<A-m>'
    end
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
    'onsails/lspkind-nvim',
    config = function() require('lspkind').init() end
  }
  use 'ray-x/lsp_signature.nvim'
  use {
    'hrsh7th/vim-vsnip',
    requires = { 'hrsh7th/vim-vsnip-integ', 'rafamadriz/friendly-snippets' },
    config = function()
      Cmd(
          "imap <expr> <Tab> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'")
      Cmd(
          "smap <expr> <Tab> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'")
      Cmd(
          "imap <expr> <S-Tab> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'")
      Cmd(
          "smap <expr> <S-Tab> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'")

      Map('n', '<C-s>', '<Plug>(vsnip-select-text)')
      Map('x', '<C-s>', '<Plug>(vsnip-select-text)')
      Map('n', '<C-S>', '<Plug>(vsnip-cut-text)')
      Map('x', '<C-S>', '<Plug>(vsnip-cut-text)')
    end
  }
  use {
    'neovim/nvim-lspconfig',
    requires = { 'nvim-lua/completion-nvim', opt = true },
    config = function()
      local nvim_lsp = require('lspconfig')

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      capabilities.textDocument.completion.completionItem.resolveSupport =
          { properties = { 'documentation', 'detail', 'additionalTextEdits' } }

      local on_attach = function(client, bufnr)
        require('lsp_signature').on_attach(
            {
              bind = true,
              hint_enable = false,
              hi_parameter = "Todo",
              handler_opts = { border = "none" }
            })
        require('completion').on_attach()
        vim.opt.completeopt = "menuone,noinsert,noselect"
        vim.g.completion_enable_auto_signature = 0
        vim.g.completion_enable_auto_popup = 0
        Cmd('imap <tab> <Plug>(completion_smart_tab)')
        Cmd('imap <s-tab> <Plug>(completion_smart_s_tab)')
        vim.g.completion_matching_smart_case = 1
        vim.g.completion_matching_strategy_list =
            { 'exact', 'substring', 'fuzzy', 'all' }
        vim.g.completion_sorting = 'none'

        vim.g.completion_enable_snippet = 'vim-vsnip'

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
        buf_map('n', '<A-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')

        buf_map('n', '<leader>la',
                '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
        buf_map('n', '<leader>lr',
                '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
        buf_map('n', '<leader>ll',
                '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')

        -- buf_map('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
        buf_map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>')
        buf_map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
        buf_map('n', '<leader>a', '<Cmd>lua vim.lsp.buf.code_action()<CR>')

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
        "bashls", "vimls", "pyright", "tsserver", "vuels", "yamlls", "jsonls",
        "cmake", "gopls", "intelephense", "cssls", "html"
      }
      for _, lsp in ipairs(servers) do
        nvim_lsp[lsp]
            .setup { capabilities = capabilities, on_attach = on_attach }
      end

      nvim_lsp.ccls.setup {
        init_options = { highlight = { lsRanges = true } },
        capabilities = capabilities,
        on_attach = on_attach
      }

      nvim_lsp.texlab.setup {
        settings = {
          latex = {
            build = {
              args = {
                "-pdf", "-interaction=nonstopmode", "-synctex=1",
                "-outdir=./build", "%f"
              },
              outputDirectory = "./build",
              onSave = true
            },
            lint = { onChange = true }
          }
        },
        capabilities = capabilities,
        on_attach = on_attach
      }

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
        capabilities = capabilities,
        on_attach = on_attach
      }
    end
  }

  use {
    "ahmedkhalf/lsp-rooter.nvim",
    config = function() require("lsp-rooter").setup {} end
  }

  use 'jackguo380/vim-lsp-cxx-highlight'

  use {
    'simrat39/symbols-outline.nvim',
    config = function() Map('n', '<leader>;', ':SymbolsOutline<CR>') end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd [[TSUpdate]] end,
    config = function()
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

        autotag = { enable = true }
      }

      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end
  }
  use "p00f/nvim-ts-rainbow"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "windwp/nvim-ts-autotag"
  -- use 'romgrk/nvim-treesitter-context'

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        signs = false,
        keywords = {
          FIX = {
            icon = " ",
            color = "error",
            alt = { "FIXME", "BUG", "FIXIT", "FIX", "ISSUE" }
          },
          TODO = { icon = " ", color = "info" },
          HACK = {
            icon = " ",
            color = "warning",
            alt = { "FUCK", "SHIT", "BAD" }
          },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } }
        }
      }
    end
  }

  use {
    'andweeb/presence.nvim',
    config = function() require("presence"):setup({}) end
  }

  use 'rafcamlet/nvim-luapad'
end)
