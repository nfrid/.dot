local mx = require('mapx')

mx.nnoremap('<C-k>', '<cmd>VGit hunk_up<cr>', 'Hunk up')
mx.nnoremap('<C-j>', '<cmd>VGit hunk_down<cr>', 'Hunk down')

mx.nname('<leader>g', 'git')
mx.nnoremap('<leader>gs', '<cmd>VGit buffer_hunk_stage<cr>', 'Stage hunk')
mx.nnoremap('<leader>gr', '<cmd>VGit buffer_hunk_reset<cr>', 'Reset hunk')
mx.nnoremap('<leader>gp', '<cmd>VGit buffer_hunk_preview<cr>', 'Preview hunk')
mx.nnoremap('<leader>gb', '<cmd>VGit buffer_blame_preview<cr>', 'Blame')
mx.nnoremap('<leader>gd', '<cmd>VGit buffer_diff_preview<cr>', 'Diff')
mx.nnoremap('<leader>gh', '<cmd>VGit buffer_history_preview<cr>', 'History')
mx.nnoremap('<leader>gu', '<cmd>VGit buffer_reset<cr>', 'Reset buffer')
mx.nnoremap('<leader>gg', '<cmd>VGit buffer_gutter_blame_preview<cr>', 'Gutter blame')

mx.nname('<leader>gl', 'project')
mx.nnoremap('<leader>glh', '<cmd>VGit project_hunks_preview<cr>', 'Hunks')
mx.nnoremap('<leader>gls', '<cmd>VGit project_hunks_staged_preview<cr>', 'Staged hunks')
mx.nnoremap('<leader>gld', '<cmd>VGit project_diff_preview<cr>', 'Diff')
mx.nnoremap('<leader>glq', '<cmd>VGit project_hunks_qf<cr>', 'Quickfix hunks')
mx.nnoremap('<leader>gx', '<cmd>VGit toggle_diff_preference<cr>', 'Toggle diff pref')

vim.opt.signcolumn = 'yes'

require('vgit').setup({
  settings = {
    keymaps = {
      ['n <C-k>'] = 'hunk_up',
      ['n <C-j>'] = 'hunk_down',
    },
    git = {
      cmd = 'git', -- optional setting, not really required
      fallback_cwd = vim.fn.expand("$HOME", nil, nil),
      fallback_args = {
        "--git-dir",
        vim.fn.expand("$HOME/.dot", nil, nil),
        "--work-tree",
        vim.fn.expand("$HOME", nil, nil),
      },
    },
    hls = {
      GitBackground = 'Normal',
      GitHeader = 'NormalFloat',
      GitFooter = 'NormalFloat',
      GitBorder = 'LineNr',
      GitLineNr = 'LineNr',
      GitComment = 'Comment',
      GitSignsAdd = {
        gui = nil,
        fg = '#d7ffaf',
        bg = nil,
        sp = nil,
        override = false,
      },
      GitSignsChange = {
        gui = nil,
        fg = '#7AA6DA',
        bg = nil,
        sp = nil,
        override = false,
      },
      GitSignsDelete = {
        gui = nil,
        fg = '#e95678',
        bg = nil,
        sp = nil,
        override = false,
      },
      GitSignsAddLn = 'DiffAdd',
      GitSignsDeleteLn = 'DiffDelete',
      GitWordAdd = {
        gui = nil,
        fg = nil,
        bg = '#5d7a22',
        sp = nil,
        override = false,
      },
      GitWordDelete = {
        gui = nil,
        fg = nil,
        bg = '#960f3d',
        sp = nil,
        override = false,
      },
    },
    live_blame = {
      enabled = true,
      format = function(blame, git_config)
        local config_author = git_config['user.name']
        local author = blame.author
        if config_author == author then
          author = 'You'
        end
        local time = os.difftime(os.time(), blame.author_time)
          / (60 * 60 * 24 * 30 * 12)
        local time_divisions = {
          { 1, 'y' },
          { 12, 'm' },
          { 30, 'd' },
          { 24, 'h' },
          { 60, 'min' },
          { 60, 'sec' },
        }
        local counter = 1
        local time_division = time_divisions[counter]
        local time_boundary = time_division[1]
        local time_postfix = time_division[2]
        while time < 1 and counter ~= #time_divisions do
          time_division = time_divisions[counter]
          time_boundary = time_division[1]
          time_postfix = time_division[2]
          time = time * time_boundary
          counter = counter + 1
        end
        local commit_message = blame.commit_message
        if not blame.committed then
          author = 'You'
          commit_message = 'Uncommitted changes'
          return string.format(' %s • %s', author, commit_message)
        end
        local max_commit_message_length = 255
        if #commit_message > max_commit_message_length then
          commit_message = commit_message:sub(1, max_commit_message_length) .. '...'
        end
        return string.format(
          ' %s, %s • %s',
          author,
          string.format(
            '%s %s ago',
            time >= 0 and math.floor(time + 0.5) or math.ceil(time - 0.5),
            time_postfix
          ),
          commit_message
        )
      end,
    },
    live_gutter = {
      enabled = true,
      edge_navigation = true, -- This allows users to navigate within a hunk
    },
    authorship_code_lens = {
      enabled = true,
    },
    scene = {
      diff_preference = 'unified',
    },
    diff_preview = {
      keymaps = {
        buffer_stage = 'S',
        buffer_unstage = 'U',
        buffer_hunk_stage = 's',
        buffer_hunk_unstage = 'u',
        toggle_view = 't',
      },
    },
    project_diff_preview = {
      keymaps = {
        buffer_stage = 's',
        buffer_unstage = 'u',
        buffer_hunk_stage = 'gs',
        buffer_hunk_unstage = 'gu',
        buffer_reset = 'r',
        stage_all = 'S',
        unstage_all = 'U',
        reset_all = 'R',
      },
    },
    signs = {
      priority = 10,
      definitions = {
        GitSignsAddLn = {
          linehl = 'GitSignsAddLn',
          texthl = nil,
          numhl = nil,
          icon = nil,
          text = '',
        },
        GitSignsDeleteLn = {
          linehl = 'GitSignsDeleteLn',
          texthl = nil,
          numhl = nil,
          icon = nil,
          text = '',
        },
        GitSignsAdd = {
          texthl = 'GitSignsAdd',
          numhl = nil,
          icon = nil,
          linehl = nil,
          text = '┃',
        },
        GitSignsDelete = {
          texthl = 'GitSignsDelete',
          numhl = nil,
          icon = nil,
          linehl = nil,
          text = '┃',
        },
        GitSignsChange = {
          texthl = 'GitSignsChange',
          numhl = nil,
          icon = nil,
          linehl = nil,
          text = '┃',
        },
      },
      usage = {
        screen = {
          add = 'GitSignsAddLn',
          remove = 'GitSignsDeleteLn',
        },
        main = {
          add = 'GitSignsAdd',
          remove = 'GitSignsDelete',
          change = 'GitSignsChange',
        },
      },
    },
    symbols = {
      void = '⣿',
    },
  }
})
