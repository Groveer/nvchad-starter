-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "material-lighter" },
  transparency = true,
  nvdash = {
    load_on_startup = true,
  },
  lsp = {
    signature = true,
    semantic_tokens = false,
  },
  term = {
    -- hl = "Normal:term,WinSeparator:WinSeparator",
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 1,
      height = 1,
      border = "single",
    },
  },
}

return M
