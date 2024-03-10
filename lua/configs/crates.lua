return {
  src = {
    cmp = {
      enabled = true,
    },
  },
  lsp = {
    enabled = true,
    on_attach = require("configs.lspconfig").on_attach,
    actions = true,
    completion = true,
    hover = true,
  },
}
