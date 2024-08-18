return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    {
      "<C-n>",
      "<CMD>NvimTreeToggle<CR>",
      "n",
      desc = "NvimTree Toggle",
    },
    {
      "<leader>e",
      "<CMD>NvimTreeFocus<CR>",
      "n",
      desc = "NvimTree Focus",
    },
  },
  opts = {
    git = {
      enable = true,
      ignore = false,
    },
    filters = {
      dotfiles = true,
    },
    renderer = {
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },

        glyphs = {
          default = "󰈚",
          symlink = "",
          folder = {
            default = "",
            empty = "",
            empty_open = "",
            open = "",
            symlink = "",
            symlink_open = "",
            arrow_open = "",
            arrow_closed = "",
          },
          git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "󰞋",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
  },
}
