return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    cmd = { "TSInstall", "TSInstallInfo", "TSUpdate", "TSUninstall" },
    opts = require "configs.treesitter",
  },
}
