local M = {}

-- export on_attach & capabilities for custom lspconfigs
M.on_attach = function(client, bufnr)
  local map = vim.keymap.set
  local conf = require("nvconfig").lsp
  local tc_builtin = require "telescope.builtin"
  local lsp = vim.lsp
  local function opts(desc)
    return { buffer = bufnr, desc = desc }
  end
  map("n", "gD", lsp.buf.declaration, opts "Lsp Go to declaration")
  map("n", "gd", tc_builtin.lsp_definitions, opts "Lsp Go to definition")
  map("n", "K", function()
    if (client.name == "rust-analyzer") then
      vim.cmd.RustLsp { 'hover', 'actions' }
    else
      lsp.buf.hover()
    end
  end, opts "Lsp hover information")
  map("n", "gi", tc_builtin.lsp_implementations, opts "Lsp Go to implementation")
  map("n", "gl", function() lsp.codelens.run() end, opts "Lsp CodeLens action")
  map("n", "<C-k>", lsp.buf.signature_help, opts "Lsp Show signature help")
  map("n", "<leader>wa", lsp.buf.add_workspace_folder, opts "Lsp Add workspace folder")
  map("n", "<leader>wr", lsp.buf.remove_workspace_folder, opts "Lsp Remove workspace folder")
  map("n", "<leader>wl", function()
    print(vim.inspect(lsp.buf.list_workspace_folders()))
  end, opts "Lsp List workspace folders")

  if client.name == "clangd" then
    map("n", "gs", "<cmd>ClangdSwitchSourceHeader<CR>", opts "Lsp Switch C/C++ header source")
  end
  if client.name == "rust-analyzer" then
    map("n", "ge", function()
      vim.cmd.RustLsp { 'explainError', 'current' }
    end, opts "Lsp RustLsp explain error")
  end

  map("n", "gy", tc_builtin.lsp_type_definitions, opts "Lsp Go to type definition")
  map("n", "go", "<cmd>AerialToggle!<CR>", opts "Lsp Show outline")
  map("n", "[", "<cmd>AerialPrev<CR>", opts "Lsp Previous symbol")
  map("n", "]", "<cmd>AerialNext<CR>", opts "Lsp Next symbol")

  map("n", "gr", function()
    require "nvchad.lsp.renamer" ()
  end, opts "Lsp NvRenamer")

  map({ "n", "v" }, "ga", function()
    if client.name == "rust-analyzer" then
      vim.cmd.RustLsp "codeAction"
    else
      require("actions-preview").code_actions()
    end
  end, opts "Lsp Code action")
  map("n", "gh", tc_builtin.lsp_references, opts "Lsp Show references")

  -- setup signature popup
  if conf.signature and client.server_capabilities
      and client.server_capabilities.signatureHelpProvider then
    require("nvchad.lsp.signature").setup(client, bufnr)
  end
end

-- if you just want default config for the servers then put them in a table
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
M.defaults = function()
  local lspconfig = require "lspconfig"
  local nvlsp = require "nvchad.configs.lspconfig"
  for name, opts in pairs(servers) do
    opts.on_init = nvlsp.on_init
    opts.on_attach = M.on_attach
    opts.capabilities = nvlsp.capabilities

    lspconfig[name].setup(opts)
  end
end

return M
