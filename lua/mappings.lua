require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local unmap = vim.keymap.del

unmap("n", "<A-i>")
unmap("t", "<A-i>")
unmap("n", "<leader>x")
unmap("n", "<leader>h")
unmap("n", "<leader>v")
unmap("n", "<leader>fm")

-- general
map("i", "jk", "<ESC>")
map("n", ";", ":", { desc = "Nvim CMD enter command mode" })
map({ "n", "v" }, "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { desc = "Nvim Dont copy replaced text", silent = true })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-s>", "<Esc><CMD>w!<CR>", { desc = "File Save file" })
map("n", "<A-S-q>", "<CMD>q!<CR>", { desc = "Nvim Force quit" })
map("i", "<A-S-q>", "<Esc><CMD>q!<CR>", { desc = "Nvim Force quit" })

-- plugins
map({ "n", "i", "v" }, "<A-f>", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map({ "n", "t" }, "<A-d>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

map({ "n", "i" }, "<A-q>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

map("n", "<leader>fs", "<CMD>Telescope grep_string<CR>", { desc = "Telescope Find current word" })
map("n", "<A-s>", "<CMD>SudaWrite<CR>", { desc = "Suda Save file using sudo" })
map("i", "<A-s>", "<Esc><CMD>SudaWrite<CR>", { desc = "Suda Save file using sudo" })

map("n", "dv", "<CMD>DiffviewOpen<CR>", { desc = "Diffview Open diff view" })
map("n", "dc", "<CMD>DiffviewClose<CR>", { desc = "Diffview Close diff view" })

map("n", "<F12>", "<CMD>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })

map("n", "<A-t>", function()
  require("mini.trailspace").trim()
end, { desc = "Tarilspace Trim all" })
