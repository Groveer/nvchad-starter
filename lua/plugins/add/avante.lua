return {
  "yetone/avante.nvim",
  keys = { "<leader>aa", "<leader>ar" },
  cmd = "AvanteAsk",
  build = "make",
  opts = {
    provider = "openai",
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    {
      "grapp-dev/nui-components.nvim",
      dependencies = {
        "MunifTanjim/nui.nvim",
      },
    },
    --- The below is optional, make sure to setup it properly if you have lazy=true
    {
      "MeanderingProgrammer/render-markdown.nvim",
    },
  },
}
