return {
	-- {
	-- 	"folke/noice.nvim",
	-- 	event = "VeryLazy",
	-- 	enabled = false,
	-- 	dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	-- 	opts = {
	-- 		cmdline = {
	-- 			view = "cmdline_popup",
	-- 			opts = {
	-- 				position = {
	-- 					row = 0,
	-- 					col = "50%",
	-- 				},
	-- 			},
	-- 		},
	-- 	},
	-- },
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},

	{
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			check_ts = true,
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "helix",
		},
	},
	{
		"MagicDuck/grug-far.nvim",
		opts = {},
	},

	{
		"folke/trouble.nvim",
		opts = {},
	},
}
