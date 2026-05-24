return {
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    keys = {
      { "gJ", "<cmd>TSJJoin<CR>", desc = "Join block" },
      { "gS", "<cmd>TSJSplit<CR>", desc = "Split block" },
    },
    opts = {
      use_default_keymaps = false,
    },
  },
}
