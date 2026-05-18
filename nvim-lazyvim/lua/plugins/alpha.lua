return {
  { "nvimtools/dashboard.nvim", enabled = false },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      local header = {
        " :#%%###                              #+#*=-",
        " +++**%%%##%-#                   =+#+####+=*:",
        " =%%%%%%#%%%#%**               *#-###=*#####-",
        " .%%%%@@=--**+##=            *#++:::::%%****-",
        " #@%%@===:%@%%%++=#        #=*....::=::+%*=-:",
        "%%+#@@==+@@@@%%%*:--#    ##-:..*%%%%-.::%%***=",
        "%%%%@%===@@%%%%%%.-:. #% +-*+.-%%%%%%.::%%***:",
        "#%%*%%@--+%%%%%%:=:+.#%*%.+-...%%%%#.-:*%**=*:",
        " #%*=%%*%---*::.---###**%#=+++..=...::+****=:.",
        "    =%%%%%%#%==**:.:##*#*-..-++#*********.",
        "      ....   .#+..##**#*-*#..++#  .    .",
        "           #+**...:*..--.**.:::***",
        "           %=#%#:..:.=:::.*:::::**=",
        "           #%=:..:.#.+-=+.*.=.-:**.",
        "           #%#%+.:..*-+=-:..#:#***=",
        "           #%%%%%%#*#    #:%%##***:",
        "             ##%#%#*+    %##*-***:",
        "                *%%      .*%#+",
        "                 #         %",
        "                 :         =",
      }

      dashboard.section.header.val = vim.list_slice(header, 1, 20)
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Live Grep", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  Config", ":Telescope find_files cwd=~/.config/nvim<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
