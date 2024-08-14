return {
  "ibhagwan/smartyank.nvim",
  event = "BufRead",
  config = function(_, opts)
    require("smartyank").setup(opts)
  end,
}
