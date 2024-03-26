require "nvchad.options"

-- add yours here!

vim.o.cursorlineopt ='both' -- to enable cursorline!
-- filetype for plantuml
vim.api.nvim_command "au BufNewFile,BufRead *.puml setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.pu setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.plantuml setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.uml setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.iuml setfiletype plantuml"
-- filetype for qml
vim.api.nvim_command "au BufNewFile,BufRead *.qml setfiletype qmljs"

vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/snips"
