local nvim_lsp = require('lspconfig')
local coq = require('coq')
local mx = require('mapx')
local cmd = vim.api.nvim_command

require('packer').loader('coq_nvim coq.artifacts coq.thirdparty')

vim.g.coq_settings = {
  auto_start = true,
  clients = { tabnine = { enabled = true } },
  keymap = {
    bigger_preview = '<C-l>',
    jump_to_mark = '<M-f>',
    eval_snips = '<M-h>'
  }
}

require('coq_3p') {
  { src = 'nvimlua', short_name = 'nLUA' },
  { src = 'bc', short_name = 'MATH', precision = 6 },
  { src = 'figlet', short_name = 'BIG', trigger = '!b' },
  { src = "vimtex", short_name = "vTEX" }
}

local function setup(server, cfg) server.setup(coq.lsp_ensure_capabilities(cfg)) end

local on_attach = function(client, bufnr)
  -- require('lsp_signature').on_attach(
  --     {
  --       bind = true,
  --       hint_enable = false,
  --       hi_parameter = 'Todo',
  --       handler_opts = { border = 'none' }
  --     })

  local function buf_set(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local buf = vim.lsp.buf
  mx.nnoremap('gD', function() buf.declaration() end, 'buffer', 'To Declaration')
  mx.nnoremap('gd', function() buf.definition() end, 'buffer', 'To Definition')
  mx.nnoremap('K', buf.hover, 'buffer', 'Describe on Point')
  mx.nnoremap('gi', function() buf.implementation() end, 'buffer',
              'To Implementation')
  mx.nnoremap('<C-A-k>', buf.signature_help, 'buffer', 'Signature on Point')

  mx.nname('<leader>l', 'LSP')
  mx.nnoremap('<leader>la', function() buf.add_workspace_folder() end, 'buffer',
              'Workspace Add')
  mx.nnoremap('<leader>lr', function() buf.remove_workspace_folder() end,
              'buffer', 'Workspace Remove')
  mx.nnoremap('<leader>ld',
              function() print(vim.inspect(buf.list_workspace_folders())) end,
              'buffer', 'List Workspaces')
  mx.nnoremap('<leader>ll', '<cmd>LspRestart<CR>', 'buffer', 'Restart Server')

  mx.nnoremap('<leader>D', function() buf.type_definition() end, 'buffer',
              'Type Definition')
  mx.nnoremap('<F2>', function() buf.rename() end, 'buffer', 'Rename')
  mx.nnoremap('<leader>cr', function() buf.rename() end, 'buffer', 'Rename')
  mx.nnoremap('gr', function() buf.references() end, 'buffer', 'References')
  mx.nnoremap('<leader>a', function() buf.code_action() end, 'buffer',
              'Code Actions')

  local d = vim.diagnostic
  mx.nnoremap('<leader>e', function() d.open_float() end, 'buffer',
              'Diagnostics on Point')
  mx.nnoremap(']d', function() d.goto_next() end, 'buffer', 'Next Diagnostic')
  mx.nnoremap('[d', function() d.goto_prev() end, 'buffer', 'Prev Diagnostic')

  mx.nnoremap('<leader>lf', function() buf.formatting() end, 'buffer', 'Format')
end

local servers = {
  'bashls', 'vimls', 'pyright', 'tsserver', 'vuels', 'yamlls', 'jsonls',
  'cmake', 'gopls', 'intelephense', 'cssls', 'html', 'hls'
}
for _, lsp in ipairs(servers) do setup(nvim_lsp[lsp], { on_attach = on_attach }) end

local eslint = {
  lintCommand = 'eslint_d -f unix --stdin --stdin-filename ${INPUT}',
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %m' },
  lintIgnoreExitCode = true,
  formatCommand = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}',
  formatStdin = true
}

local eslint_fix = function()
  cmd("w")
  local f = io.popen('npx eslint --fix "' .. vim.api.nvim_buf_get_name(0) ..
                         '" 2>&1')
  if not f then return end

  print(f:read('*all'))
  f:close()
  cmd("let tmp = winsaveview()")
  cmd("e!")
  cmd("call winrestview(tmp)")
  cmd("IndentBlanklineRefresh")
end

setup(nvim_lsp.efm, {
  root_dir = function()
    mx.nnoremap('<leader>cf', eslint_fix)
    return vim.fn.getcwd()
  end,
  settings = {
    languages = {
      javascript = { eslint },
      javascriptreact = { eslint },
      ['javascript.jsx'] = { eslint },
      typescript = { eslint },
      ['typescript.tsx'] = { eslint },
      typescriptreact = { eslint }
    }
  },
  filetypes = {
    'javascript', 'javascriptreact', 'javascript.jsx', 'typescript',
    'typescript.tsx', 'typescriptreact'
  },
  on_attach = on_attach
})

setup(nvim_lsp.ccls, {
  init_options = { highlight = { lsRanges = true } },
  on_attach = on_attach
})

setup(nvim_lsp.texlab, {
  settings = {
    latex = {
      build = {
        args = {
          '-pdf', '-interaction=nonstopmode', '-synctex=1', '-outdir=./build',
          '%f'
        },
        outputDirectory = './build',
        onSave = true
      },
      lint = { onChange = true }
    }
  },
  on_attach = on_attach
})

-- setup(nvim_lsp.sumneko_lua, {
--   cmd = { '/usr/bin/lua-language-server' },
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
-- })

local luadev = require('lua-dev').setup({
  -- library = { vimruntime = false },
  lspconfig = { cmd = { '/usr/bin/lua-language-server' }, on_attach = on_attach }
})

setup(nvim_lsp.sumneko_lua, luadev)

cmd('COQnow -s')
