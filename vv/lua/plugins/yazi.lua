return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>-", "<cmd>Yazi<CR>", desc = "Open yazi at current file" },
    { "<leader>cw", "<cmd> Yazi cwd<CR>", desc = "Open yazi in cwd" },
  },
  opts = {
    open_for_directories = false,
    floating_window_scaling_factor = 0.9,
    yazi_floating_window_border = "rounded",
  },
}
