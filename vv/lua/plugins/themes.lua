return {
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({
				style = {
					boolean = "none",
					number = "none",
					float = "none",
					error = "none",
					comments = "none",
					conditionals = "none",
					functions = "none",
					headings = "bold",
					operators = "none",
					strings = "none",
					variables = "none",
					keywords = "none",
					keyword_return = "none",
					keywords_loop = "none",
					keywords_label = "none",
					keywords_exception = "none",
					builtin_constants = "none",
					builtin_functions = "none",
					builtin_types = "none",
					builtin_variables = "none",
				},
				colors = {
					func = "#bc96b0",
					keyword = "#787bab",
					string = "#8a739a",
					number = "#8f729e",
				},
			})

			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "vague",
				callback = function()
					vim.api.nvim_set_hl(0, "Comment", { fg = "#606079", italic = false })
					vim.api.nvim_set_hl(0, "String", { fg = "#8a739a", italic = false })
					vim.api.nvim_set_hl(0, "@comment", { fg = "#606079", italic = false })
					vim.api.nvim_set_hl(0, "@string", { fg = "#8a739a", italic = false })
					vim.api.nvim_set_hl(0, "@keyword", { fg = "#787bab", italic = false })
					vim.api.nvim_set_hl(0, "@function", { fg = "#bc96b0", italic = false })
					vim.api.nvim_set_hl(0, "@type", { fg = "#9bb4bc", italic = false })
					vim.api.nvim_set_hl(0, "@variable", { fg = "#cdcdcd", italic = false })
					vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1c1c24" })
					vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#878787" })
					vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1c1c24", fg = "#cdcdcd" })
					vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#252530", fg = "#cdcdcd" })
					vim.api.nvim_set_hl(0, "PmenuBorder", { fg = "#878787" })
					vim.api.nvim_set_hl(0, "Visual", { bg = "#2e2e3e" })
					vim.api.nvim_set_hl(0, "CursorLine", { bg = "#252530" })
					vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#252530" })
					vim.api.nvim_set_hl(0, "CursorLineSign", { bg = "#252530" })
					vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#cdcdcd" })
					vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#6e94b2", bold = true })
					vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#787bab" })
					vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#606079" })
					vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#646477" })
					vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#646477" })
					vim.api.nvim_set_hl(0, "LineNr", { fg = "#d6d2c8" })
				end,
			})
		end,
	},

	{
		"RRethy/nvim-base16",
		lazy = false,
		priority = 1000,
		config = function()
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "base16-black-metal-gorgoroth",
				callback = function()
					vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#912222" })
					vim.api.nvim_set_hl(0, "TSComment", { fg = "#6f7b68" })
					vim.api.nvim_set_hl(0, "Comment", { fg = "#6f7b68" })
					vim.api.nvim_set_hl(0, "Visual", { bg = "#9b8d7f", fg = "#1e1e1e" })
					vim.api.nvim_set_hl(0, "Search", { bg = "#9b8d7f", fg = "#1e1e1e" })
					vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#9b8d7f", fg = "#1e1e1e" })
					vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#888888" })
					vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#888888" })
					vim.api.nvim_set_hl(0, "LineNr", { fg = "#d6d2c8" })
				end,
			})
		end,
	},

	{
		"CosecSecCot/cosec-twilight.nvim",
		lazy = false,
		priority = 1000,
		dependencies = "rktjmp/lush.nvim",
	},
}
