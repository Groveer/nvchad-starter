require "nvchad.options"

-- add yours here!

vim.o.cursorlineopt = "both" -- to enable cursorline!
-- filetype for plantuml
vim.api.nvim_command "au BufNewFile,BufRead *.puml setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.pu setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.plantuml setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.uml setfiletype plantuml"
vim.api.nvim_command "au BufNewFile,BufRead *.iuml setfiletype plantuml"
-- filetype for qml
vim.api.nvim_command "au BufNewFile,BufRead *.qml setfiletype qmljs"

vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/snips"

if vim.g.neovide then
  vim.o.guifont = "Maple Mono NF CN:h14"
  vim.g.neovide_transparency = 1.0
  vim.g.neovide_input_ime = false
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end
