local M = {}
local map = vim.keymap.set
local conf = require("nvconfig").ui.lsp
local capabilities = require("nvchad.configs.lspconfig").capabilities
local on_init = require("nvchad.configs.lspconfig").on_init
local lspconfig = require "lspconfig"

-- export on_attach & capabilities for custom lspconfigs
M.on_attach = function(client, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = desc }
  end
  -- if client.server_capabilities.inlayHintProvider then
  --   vim.lsp.inlay_hint.enable(bufnr, true)
  -- end

  map("n", "gD", vim.lsp.buf.declaration, opts "Lsp Go to declaration")
  map("n", "gd", "<cmd>Glance definitions<CR>", opts "Lsp Go to definition")
  map("n", "K", vim.lsp.buf.hover, opts "Lsp hover information")
  map("n", "gi", "<cmd>Glance implementations<CR>", opts "Lsp Go to implementation")
  map("n", "<C-k>", vim.lsp.buf.signature_help, opts "Lsp Show signature help")
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Lsp Add workspace folder")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Lsp Remove workspace folder")
  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts "Lsp List workspace folders")

  if client.name == "clangd" then
    map("n", "gs", "<cmd>ClangdSwitchSourceHeader<CR>", opts "Lsp Switch C/C++ header source")
  end

  map("n", "gy", "<cmd>Glance type_definitions<CR>", opts "Lsp Go to type definition")
  map("n", "go", "<cmd>AerialToggle!<CR>", opts "Lsp Show outline")
  map("n", "[", "<cmd>AerialPrev<CR>", opts "Lsp Previous symbol")
  map("n", "]", "<cmd>AerialNext<CR>", opts "Lsp Next symbol")

  map("n", "gr", function()
    require "nvchad.lsp.renamer"()
  end, opts "Lsp NvRenamer")

  map({ "n", "v" }, "ga", function()
    require("actions-preview").code_actions()
  end, opts "Lsp Code action")
  map("n", "gh", "<cmd>Glance references<CR>", opts "Lsp Show references")

  -- setup signature popup
  if conf.signature and client.server_capabilities.signatureHelpProvider then
    require("nvchad.lsp.signature").setup(client, bufnr)
  end
end

-- if you just want default config for the servers then put them in a table
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  "html",
  "clangd",
  "pylsp",
  "bashls",
  "jsonls",
  "qmlls",
  "neocmake",
  "lua_ls",
  "rust_analyzer",
}

M.defaults = function()
  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = M.on_attach,
      capabilities = capabilities,
      on_init = on_init,
    }
  end
end

return M
