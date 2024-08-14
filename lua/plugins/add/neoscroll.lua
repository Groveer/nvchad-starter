return {
  "karb94/neoscroll.nvim",
  event = { "BufRead" },
  config = function(_, opts)
    require("neoscroll").setup(opts)
  end,
}
