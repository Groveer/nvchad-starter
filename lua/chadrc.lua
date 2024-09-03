-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  hl_override = {
    NvDashButtons = { fg = "yellow" },
  },
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
      function()
        local stats = require("lazy").stats()
        local plugins = "  Loaded " .. stats.count .. " plugins in "
        local time = math.floor(stats.startuptime) .. " ms   "
        return plugins .. time
      end,
    },
  },
}

M.base46 = {
  theme = "github_light",
  theme_toggle = { "github_light", "github_light" },
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
    border = "rounded",
  },
}

return M
