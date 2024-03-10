require "nvchad.options"

-- add yours here!

vim.o.cursorlineopt ='both' -- to enable cursorline!
-- filetype for plantuml
vim.api.nvim_command "au BufNewFile,BufRead *.puml setfiletype puml"
vim.api.nvim_command "au BufNewFile,BufRead *.pu setfiletype puml"
vim.api.nvim_command "au BufNewFile,BufRead *.plantuml setfiletype puml"
vim.api.nvim_command "au BufNewFile,BufRead *.uml setfiletype puml"
vim.api.nvim_command "au BufNewFile,BufRead *.iuml setfiletype puml"
-- filetype for qml
vim.api.nvim_command "au BufNewFile,BufRead *.qml setfiletype qmljs"

vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/snips"
vim.o.listchars=[[tab:>\ ,trail:·,eol:↲]]
vim.o.list = true
