return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
    ensure_installed = {
      "bash",
      "c",
      "cmake",
      "cpp",
      "css",
      "go",
      "html",
      "ini",
      "javascript",
      "json",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "meson",
      "python",
      "qmljs",
      "rust",
      "typescript",
      "vim",
      "yaml",
      "diff",
    },

    highlight = {
      enable = true,
      use_languagetree = true,
    },

    indent = { enable = true },
  },

  dependencies = {
    "hiphish/rainbow-delimiters.nvim",
  },
}
