require('vutils')
local cmd = vim.api.nvim_command

vim.opt.packpath =
    '~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/packer,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/packer/after,~/.local/share/nvim/packer/after,/etc/xdg/nvim/after,~/.config/nvim/after'
cmd('packadd packer.nvim')

local mx = require('mapx')

local packer = require('packer')

mx.nnoremap('<leader>P', '<cmd>PackerCompile<cr>', 'Recompile Plugins')
mx.nnoremap('<leader>pp', '<cmd>PackerSync<cr>', 'Sync Plugins')

return packer.startup({
  function()
    local use = packer.use

    use { 'wbthomason/packer.nvim', opt = true }

    use 'folke/lsp-colors.nvim'
    use { 'dracula/vim', config = function() require('plugins.theme') end }

    use {
      'hoob3rt/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function() require('plugins.lualine') end
    }
    use {
      'akinsho/nvim-bufferline.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require('plugins.bufferline') end
    }

    use {
      'lukas-reineke/indent-blankline.nvim',
      config = function() require('plugins.indent-blankline') end
    }
    use {
      'machakann/vim-highlightedyank',
      config = function() vim.g.highlightedyank_highlight_duration = 250 end
    }
    use 'kevinhwang91/nvim-hlslens'
    use {
      'norcalli/nvim-colorizer.lua',
      config = function() require('plugins.colorizer') end
    }

    use {
      'folke/which-key.nvim',
      config = function() require('which-key').setup({}) end
    }
    use {
      'b0o/mapx.nvim',
      config = function() require('mapx').setup({ whichkey = true }) end
    }

    use { 'NFrid/due.nvim', config = function() require('due_nvim').setup {} end }

    use {
      'plasticboy/vim-markdown',
      config = function() require('plugins.markdown') end
    }
    use 'lervag/vimtex'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
      config = function() require('plugins.telescope') end
    }

    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'kana/vim-repeat'
    use 'jiangmiao/auto-pairs'

    use 'tversteeg/registers.nvim'
    use {
      'phaazon/hop.nvim',
      as = 'hop',
      config = function() require('plugins.hop') end
    }

    use 'fedorenchik/qt-support.vim'

    use {
      'mattn/emmet-vim',
      config = function()
        vim.g.user_emmet_mode = 'i'
        vim.g.user_emmet_leader_key = '<A-m>'
      end
    }
    -- that not workie 😔
    -- use {
    --   'RishabhRD/nvim-lsputils',
    --   requires = { 'RishabhRD/popfix', opt = true },
    --   config = function() require('plugins.lsputils') end
    -- }

    use {
      'onsails/lspkind-nvim',
      config = function() require('lspkind').init() end
    }
    -- use 'ray-x/lsp_signature.nvim'
    use 'folke/lua-dev.nvim'
    use {
      'neovim/nvim-lspconfig',
      -- requires = { 'nvim-lua/completion-nvim', opt = true },
      requires = {
        { 'ms-jpq/coq_nvim', branch = 'coq' },
        { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
        { 'ms-jpq/coq.thirdparty', branch = '3p' },
      },
      config = function() require('plugins.lsp') end
    }

    use {
      'kosayoda/nvim-lightbulb',
      config = function() require('plugins.lightbulb') end
    }

    use {
      'ahmedkhalf/lsp-rooter.nvim',
      config = function() require('lsp-rooter').setup {} end
    }

    use 'jackguo380/vim-lsp-cxx-highlight'

    use {
      'simrat39/symbols-outline.nvim',
      config = function()
        -- mx.nnoremap('<leader>;', ':SymbolsOutline<CR>', 'Show Symbols Outline')
      end
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() cmd('TSUpdate') end,
      config = function() require('plugins.treesitter') end
    }
    use 'p00f/nvim-ts-rainbow'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'windwp/nvim-ts-autotag'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'RRethy/nvim-treesitter-textsubjects'
    -- use 'romgrk/nvim-treesitter-context'

    use {
      'folke/todo-comments.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = function() require('plugins.todo') end
    }

    -- use {
    --   'andweeb/presence.nvim',
    --   config = function() require('presence'):setup({}) end
    -- }

    use 'rafcamlet/nvim-luapad'
  end,
  config = {
    package_root = require('packer.util').join_paths(vim.fn.stdpath('data'),
                                                     'packer', 'pack')
  }
})
