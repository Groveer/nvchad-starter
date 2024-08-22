return {
  "yetone/avante.nvim",
  keys = {
    { "<leader>aa", mode = { "n", "v" } },
    { "<leader>ar", mode = { "n", "v" } },
  },
  cmd = "AvanteAsk",
  build = "make",
  opts = {
    provider = "copilot",
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below is optional, make sure to setup it properly if you have lazy=true
    {
      "MeanderingProgrammer/render-markdown.nvim",
    },
  },
}
