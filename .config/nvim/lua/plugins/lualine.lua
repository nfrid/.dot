local function keymap()
  if vim.bo.iminsert == 0 then
    return [[us]]
  else
    return [[ru]]
  end
end

local function action_available()
  return require('nvim-lightbulb').get_status_text()
end

local function mode_to_symbol(mode)
  local mode_sym_map = {
    normal = "α",
    insert = "Ɣ",
    visual = "Σ",
    ["v-block"] = "Θ",
    select = "Ϸ",
    ["v-select"] = "Ϸ",
    command = "Ψ",
    replace = "Δ"
  }

  return mode_sym_map[string.lower(mode)] or mode
end

require('lualine').setup {
  options = {
    theme = 'dracula',
    section_separators = { '', '' },
    component_separators = { '|', '|' },
    icons_enabled = true,
    fmt = mode_to_symbol
  },
  sections = {
    lualine_a = { 'mode', keymap },
    lualine_b = { 'branch', 'diff' },
    lualine_c = {
      'filename', {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' }
      }, action_available
    },
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  }
}
