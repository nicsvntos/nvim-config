return {
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
    },
    ft = "python",
    opts = {},
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<CR>", desc = "Select venv" },
      { "<leader>vc", "<cmd>VenvSelectCached<CR>", desc = "Select cached venv" },
    },
  },
}
