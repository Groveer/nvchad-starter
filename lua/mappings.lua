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
unmap("n", "<leader>fw")

-- general
map("i", "jk", "<ESC>")
map({"n", "v"}, ";", ":", { desc = "Nvim CMD enter command mode" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Nvim Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Nvim Move line up" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-s>", "<Esc><CMD>w!<CR>", { desc = "File Save file" })
map("n", "<A-S-q>", "<CMD>q!<CR>", { desc = "Nvim Force quit" })
map("i", "<A-S-q>", "<Esc><CMD>q!<CR>", { desc = "Nvim Force quit" })

-- plugins
-- fonform
map({ "n", "i", "v" }, "<A-f>", function()
  if require("conform").format { lsp_fallback = true } then
    vim.notify("File format applied", vim.log.levels.INFO)
  end
end, { desc = "File Format with conform" })

-- terminal
map({ "n", "t" }, "<A-d>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

-- bufline
map({ "n", "i" }, "<A-q>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- telescope
map("n", "<leader>fs", "<CMD>Telescope grep_string<CR>", { desc = "Telescope Find current word" })
map("n", "<leader>fw", function()
  require("telescope").extensions.live_grep_args.live_grep_args()
end, { desc = "Telescope Live grep" })

-- suda
map("n", "<A-s>", "<CMD>SudaWrite<CR>", { desc = "Suda Save file using sudo" })
map("i", "<A-s>", "<Esc><CMD>SudaWrite<CR>", { desc = "Suda Save file using sudo" })

-- diffview
map("n", "dv", "<CMD>DiffviewOpen<CR>", { desc = "Diffview Open diff view" })
map("n", "dc", "<CMD>DiffviewClose<CR>", { desc = "Diffview Close diff view" })

-- markdown
map("n", "<F12>", "<CMD>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })

-- trillspace
map("n", "<A-t>", function()
  require("mini.trailspace").trim()
end, { desc = "Tarilspace Trim all" })
