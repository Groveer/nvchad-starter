return {
  "Exafunction/codeium.nvim",
  event = "InsertEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function(_, opts)
    require("codeium").setup(opts)
  end,
}
