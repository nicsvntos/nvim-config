return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-mini/mini.icons" },
		event = "VeryLazy",
		opts = function(_, opts)
			local bg0 = "#0d0d0f"
			local bg3 = "#161619"
			local fg1 = "#c8c8c8"
			local fg4 = "#565660"
			local fg5 = "#484855"

			local purple_fn = "#bc96b0" -- functions / insert
			local purple_kw = "#787bab" -- keywords / normal / visual
			local blue_match = "#6e94b2" -- matches / command
			local frost = "#a1b3b9" -- replace

			local theme = {
				normal = {
					a = { fg = bg0, bg = purple_kw, gui = "bold" },
					b = { fg = fg1, bg = bg3 },
					c = { fg = fg4, bg = nil },
				},
				insert = {
					a = { fg = bg0, bg = purple_fn, gui = "bold" },
					b = { fg = fg1, bg = bg3 },
					c = { fg = fg4, bg = nil },
				},
				visual = {
					a = { fg = bg0, bg = purple_kw, gui = "bold" },
					b = { fg = fg1, bg = bg3 },
					c = { fg = fg4, bg = nil },
				},
				replace = {
					a = { fg = bg0, bg = frost, gui = "bold" },
					b = { fg = fg1, bg = bg3 },
					c = { fg = fg4, bg = nil },
				},
				command = {
					a = { fg = bg0, bg = blue_match, gui = "bold" },
					b = { fg = fg1, bg = bg3 },
					c = { fg = fg4, bg = nil },
				},
				inactive = {
					a = { fg = fg5, bg = bg3 },
					b = { fg = fg5, bg = bg3 },
					c = { fg = fg5, bg = nil },
				},
			}
			opts.options = {
				icons_enabled = false,
				theme = "auto",
				--theme = theme,
				component_separators = "|",
				section_separators = "",
				globalstatus = true,
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
