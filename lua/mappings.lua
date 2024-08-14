require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local unmap = vim.keymap.del

unmap("n", "<A-i>")
unmap("t", "<A-i>")
unmap("n", "<leader>x")
unmap("n", "<leader>h")
unmap("n", "<leader>v")
-- disable some telescope keymap
unmap("n", "<leader>fm")
unmap("n", "<leader>ds")

-- general
map("i", "jk", "<ESC>")
map({ "n", "v" }, ";", ":", { desc = "Nvim CMD enter command mode" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Nvim Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Nvim Move line up" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-s>", "<Esc><CMD>w!<CR>", { desc = "File Save file" })
map("n", "<A-S-q>", "<CMD>q!<CR>", { desc = "Nvim Force quit" })
map("i", "<A-S-q>", "<Esc><CMD>q!<CR>", { desc = "Nvim Force quit" })

map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "lsp diagnostic loclist" })

-- terminal
map({ "n", "t" }, "<A-d>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

-- bufline
map({ "n", "i" }, "<A-q>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })
