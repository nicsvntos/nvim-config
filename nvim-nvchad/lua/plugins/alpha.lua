return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local alpha = require "alpha"
      local dashboard = require "alpha.themes.dashboard"

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

      dashboard.section.header.val = header
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Live Grep", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  Config", ":Telescope find_files cwd=~/AppData/Local/nvchad<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
