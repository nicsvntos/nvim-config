return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      },

      float = {
        padding = 2,
        max_width = 40,
        max_height = 20,
        border = "rounded",
        winblend = {
          winblend = 0,
        },
      },
      keymaps = {
        ["<CR>"] = "actions.select",
        ["<BS>"] = "actions.parent",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["q"] = "actions.close",
      },
    })

    vim.keymap.set("n", "-", require("oil").toggle_float, { desc = "Open parent directory" })
  end,
}
