return {
  { "nvimtools/dashboard.nvim", enabled = false },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      local header = {
        "                                         #                      ",
        "                -                       +                       ",
        "                .#                    #.                        ",
        "                 ##                 +#                          ",
        "                  ##              .##                           ",
        "                   ###           ###                            ",
        "                   .###       .####.                            ",
        "                    #####   ######+                             ",
        "                     #############                              ",
        "                    .#############                              ",
        "             ...+##################+                            ",
        "                  ######################.                       ",
        "                    ###########################.                ",
        "                     ###################################.       ",
        "                    +############                        ..     ",
        "                    ##     ######                               ",
        "                   +         #####                              ",
        "                              ####                              ",
        "                               +###                             ",
        "                                 ###                            ",
        "                                  ##+                           ",
        "                                   ##.                          ",
        "                                    ##                          ",
        "                                     +#                         ",
        "                                      .#                        ",
        "                                       .#                       ",
        "                                         #                      ",
        "                                          #                     ",
        "                                           -                    ",
        "                                            .                   ",
      }

      local function icon(code)
        return vim.fn.nr2char(code) .. " "
      end

      dashboard.section.header.val = header
      dashboard.section.buttons.val = {
        dashboard.button("f", icon(0xf0311) .. " > Find File", ":Telescope find_files<CR>"),
        dashboard.button("y", icon(0xf15b) .. " > Browse Files", ":Yazi<CR>"),
        dashboard.button("b", icon(0xf0770) .. " > Browse Directory", ":Telescope zoxide list<CR>"),
        dashboard.button("g", icon(0xf0349) .. " > Live Grep", ":Telescope live_grep<CR>"),
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
