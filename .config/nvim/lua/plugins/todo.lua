require("todo-comments").setup {
  signs = false,
  keywords = {
    FIX = {
      icon = " ",
      color = "error",
      alt = { "FIXME", "BUG", "FIXIT", "FIX", "ISSUE" }
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning", alt = { "FUCK", "SHIT", "BAD" } },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } }
  }
}
