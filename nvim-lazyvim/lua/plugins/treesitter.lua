return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
    ensure_installed = {
      "lua",
      "rust",
      "python",
      "typescript",
      "javascript",
      "svelte",
      "html",
      "css",
      "markdown",
      "markdown_inline",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
