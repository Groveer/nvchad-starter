-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  nvdash = {
    load_on_startup = true,
  },
}

M.base46 = {
  theme = "chadracula-evondev",
  theme_toggle = { "chadracula-evondev", "material-lighter" },
  transparency = true,
}

M.lsp = {
  signature = false,
  hover = false,
  semantic_tokens = false,
}

M.term = {
  -- hl = "Normal:term,WinSeparator:WinSeparator",
  float = {
    relative = "editor",
    row = 0,
    col = 0,
    width = 1,
    height = 1,
    border = "single",
  },
}

return M
