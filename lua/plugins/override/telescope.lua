return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fs",
      "<CMD>Telescope grep_string<CR>",
      "n",
      desc = "Telescope Find current word",
    },
    {
      "<leader>fr",
      "<CMD>Telescope resume<CR>",
      "n",
      desc = "Telescope Resume",
    },
    {
      "<leader>fw",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      "n",
      desc = "Telescope Live grep",
    },
  },
  opts = function()
    local lga_actions = require "telescope-live-grep-args.actions"
    return {
      extensions_list = { "themes", "terms", "noice", "live_grep_args" },
      extensions = {
        live_grep_args = {
          auto_quoting = true, -- enable/disable auto-quoting
          -- define mappings, e.g.
          mappings = { -- extend mappings
            i = {
              ["<C-k>"] = lga_actions.quote_prompt(),
              ["<C-i>"] = lga_actions.quote_prompt { postfix = " --iglob " },
            },
          },
          -- ... also accepts theme settings, for example:
          -- theme = "dropdown", -- use dropdown theme
          -- theme = { }, -- use own theme spec
          -- layout_config = { mirror=true }, -- mirror preview pane
        },
      },
    }
  end,
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    version = "^1.0.0",
  },
}
