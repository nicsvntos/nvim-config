return {
  {
   "echasnovski/mini.surround",
   opts = {
     mappings = {
       add = "sa",
       delete = "sd",
       replace = "sr",
       find = "sf",
       find_left = "sF",
       highlight = "sh",
       update_n_lines = "sn",
     },
   },
  },
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewFileHistory",
    },
    config = function()
      require("diffview").setup()
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPost",
    opts = {
      max_lines = 3,
    },
  },

  {
    "nvim-mini/mini.splitjoin",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "gS", desc = "Split/join arguments" },
    },
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle undotree" },
    },
  },

  {
    "abecodes/tabout.nvim",
    event = "InsertEnter",
    opts = {
      tabkey = "<Tab>",
      backwards_tabkey = "<S-Tab>",
      act_as_tab = true,
      ignore_beginning = true,
    },
  },
}
