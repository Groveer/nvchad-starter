-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  hl_override = {
    Normal = {
      bg = { "black", 3 },
    },
  },
  theme = "oxocarbon",
  transparency = true,
  nvdash = {
    load_on_startup = true,
  },
  lsp = {
    signature = false,
    hover = false,
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
