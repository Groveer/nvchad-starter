return {
  "folke/todo-comments.nvim",
  event = "BufRead",
  config = function(_, opts)
    require("todo-comments").setup(opts)
  end,
}
