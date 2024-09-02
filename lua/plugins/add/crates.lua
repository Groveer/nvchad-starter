return {
  "Saecki/crates.nvim",
  event = "BufRead Cargo.toml",
  opts = {
    src = {
      cmp = {
        enabled = true,
      },
    },
    lsp = {
      enabled = true,
      on_attach = require("util").lsp_on_attach,
      actions = true,
      completion = true,
      hover = true,
    },
  },

  config = function(_, opts)
    local cmp = require "cmp"
    local config = cmp.get_config()
    table.insert(config.sources, 1, {
      name = "crates",
      max_item_count = 5,
    })
    cmp.setup(config)
    return require("crates").setup(opts)
  end,
}
