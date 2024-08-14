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
    return require("crates").setup(opts)
  end,
}
