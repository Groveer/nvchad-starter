return {
  "sindrets/diffview.nvim",
  keys = {
    { "n", "dv", "<CMD>DiffviewOpen<CR>", "n", desc = "Diffview Open diff view" },
    { "n", "dc", "<CMD>DiffviewClose<CR>", "n", desc = "Diffview Close diff view" },
  },
  cmd = { "DiffviewOpen", "DiffviewClose" },
}
