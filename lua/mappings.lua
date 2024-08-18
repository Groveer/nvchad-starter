local map = vim.keymap.set

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<CMD>noh<CR>", { desc = "General Clear highlights" })

map("n", "<C-s>", "<CMD>w<CR>", { desc = "General Save file" })
map("n", "<C-c>", "<CMD>%y+<CR>", { desc = "General Copy whole file" })

map("n", "<leader>n", "<CMD>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<CMD>set rnu!<CR>", { desc = "Toggle relative number" })
map("n", "<leader>ch", "<CMD>NvCheatsheet<CR>", { desc = "Toggle nvcheatsheet" })

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
end, { desc = "Terminal Toggle floating term" })
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "Terminal Toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "Terminal New horizontal term" })

-- bufline
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer goto prev" })

map({ "n", "i" }, "<A-q>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

