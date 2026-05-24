return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = { enabled = false },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<C-/>", desc = "Toggle terminal" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Float terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Horizontal terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical size=60<CR>", desc = "Vertical terminal" },
    },
    opts = {
      open_mapping = [[<C-/>]],
      direction = "float",
      float_opts = {
        border = "rounded",
      },
      shade_terminals = false,
    },
  },
}
