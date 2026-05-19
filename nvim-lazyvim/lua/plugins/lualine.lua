return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = false,
        theme = {
          normal = {
            a = { fg = "#141415", bg = "#787bab" },
            b = { fg = "#cdcdcd", bg = "#1c1c24" },
            c = { fg = "#606079", bg = "#141415" },
          },
          insert = { a = { fg = "#141415", bg = "#8a739a" } },
          visual = { a = { fg = "#141415", bg = "#6e94b2" } },
          replace = { a = { fg = "#141415", bg = "#c48282" } },
          inactive = {
            a = { fg = "#606079", bg = "#141415" },
            b = { fg = "#606079", bg = "#141415" },
            c = { fg = "#606079", bg = "#141415" },
          },
        },
        component_separators = "|",
        section_separators = "",
      },
      sections = {
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
      },
    },
  },
}
