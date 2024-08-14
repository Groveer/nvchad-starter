-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  html = {},
  clangd = {
    cmd = {
      "clangd",
      "-j=24",
      "--offset-encoding=utf-16",
      "--clang-tidy",
      "--all-scopes-completion",
      "--header-insertion=never",
    },
    filetypes = { "c", "cpp" },
    single_file_support = false,
  },
  pylsp = {},
  bashls = {},
  jsonls = {},
  neocmake = {},
  lua_ls = {},
  taplo = {},
  tsserver = {},
}

return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()
    local lspconfig = require "lspconfig"
    local nvlsp = require "nvchad.configs.lspconfig"
    for name, opts in pairs(servers) do
      opts.on_init = nvlsp.on_init
      opts.on_attach = require("util").lsp_on_attach
      opts.capabilities = nvlsp.capabilities

      lspconfig[name].setup(opts)
    end
  end,
}
