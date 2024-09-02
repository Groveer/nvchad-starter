return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function(_, opts)
    require("copilot").setup(opts)
  end,
  dependencies = {
    {
      "zbirenbaum/copilot-cmp",
      config = function(_, opts)
        local cmp = require "cmp"
        local config = cmp.get_config()
        table.insert(config.sources, 1, {
          name = "copilot",
          max_item_count = 5,
        })
        cmp.setup(config)
        require("copilot_cmp").setup(opts)
      end,
    },
  },
}
