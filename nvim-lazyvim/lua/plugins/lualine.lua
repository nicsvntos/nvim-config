return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    event = "VeryLazy",
    opts = function(_, opts)
      local theme = require("lualine.themes.iceberg_dark")
      theme.normal.c.bg = nil
      theme.inactive.b.bg = nil
      theme.inactive.a.bg = nil
      theme.inactive.c.bg = nil
      theme.insert.a.bg = "#bc96b0"
      theme.visual.a.bg = "#787bab"
      theme.replace.a.bg = "#a1b3b9"

      opts.options = {
        icons_enabled = false,
        theme = theme,
        component_separators = "|",
        section_separators = "",
      }
      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          { "diff", symbols = { added = "+", modified = "~", removed = "-" } },
          { "diagnostics", symbols = { error = "E", warn = "W", info = "I", hint = "H" } },
        },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {
          function()
            local encoding = vim.o.fileencoding
            if encoding == "" then
              return vim.bo.fileformat .. " :: " .. vim.bo.filetype
            else
              return encoding .. " :: " .. vim.bo.filetype
            end
          end,
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }
    end,
  },
}
