return {
  "hrsh7th/nvim-cmp",
  opts = {
    sources = {
      { name = "copilot", max_item_count = 5 },
      -- { name = "codeium", max_item_count = 5 },
      { name = "nvim_lsp", max_item_count = 20 },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
      { name = "crates" },
    },
    view = {
      entries = {
        follow_cursor = true,
      },
    },
  },
}
