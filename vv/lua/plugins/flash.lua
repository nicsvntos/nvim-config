return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", function() require("flash").jump() end, desc = "Flash jump" },
      { "S", function() require("flash").treesitter() end, desc = "Flash treesitter" },
    },
  },
}
