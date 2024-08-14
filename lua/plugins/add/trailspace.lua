return {
  "echasnovski/mini.trailspace",
  keys = {
    {
      "<A-t>",
      function()
        require("mini.trailspace").trim()
      end,
      "n",
      desc = "Tarilspace Trim all",
    },
  },
  event = { "BufRead" },
  config = function(_, opts)
    require("mini.trailspace").setup(opts)
  end,
}
