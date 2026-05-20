return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            "%.git/",
            "node_modules/",
          },
          preview = {
            treesitter = false,
            mime_hook = function(filepath, bufnr, opts)
              local is_image = function(fp)
                local image_extensions = { "png", "jpg", "jpeg", "gif", "webp" }
                local ext = vim.fn.fnamemodify(fp, ":e"):lower()
                return vim.tbl_contains(image_extensions, ext)
              end
              if is_image(filepath) then
                require("telescope.previewers.utils").set_preview_message(
                  bufnr,
                  opts.winid,
                  "Image preview not supported"
                )
              else
                require("telescope.previewers.utils").set_preview_message(
                  bufnr,
                  opts.winid,
                  "Binary file, preview not supported"
                )
              end
            end,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      })

      require("telescope").load_extension("ui-select")

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
}
