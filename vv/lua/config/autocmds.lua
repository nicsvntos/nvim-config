local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
autocmd("TextYankPost", {
	desc = "Highlight text on yank",
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
	desc = "Remove trailing whitespace",
	pattern = "*",
	callback = function()
		local save = vim.fn.winsaveview()
		vim.cmd([[%s/\s\+$//e]])
		vim.fn.winrestview(save)
	end,
})

-- Auto resize splits when window is resized
autocmd("VimResized", {
	desc = "Auto resize splits",
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

-- Close certain filetypes with just q
autocmd("FileType", {
	desc = "Close with q",
	pattern = { "help", "lspinfo", "mason", "notify", "qf", "checkhealth", "lazy" },
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = event.buf, silent = true })
	end,
})

-- Restore cursor position on file open
autocmd("BufReadPost", {
	desc = "Restore cursor position",
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- Format on save
autocmd("BufWritePre", {
	desc = "Format on save",
	callback = function(args)
		local ok, conform = pcall(require, "conform")
		if ok then
			conform.format({ bufnr = args.buf })
		end
	end,
})

-- Auto create directories when saving a file
autocmd("BufWritePre", {
	desc = "Auto create parent directories",
	callback = function(event)
		if event.match:match("^%w%w+:[\\/][\\/]") then
			return
		end
		local file = vim.uv.fs_realpath(event.match) or event.match
		vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
	end,
})

-- Highlight on yank is already in your config so skip that one

-- Set indentation per filetype
autocmd("FileType", {
	desc = "Set indent for web filetypes",
	pattern = {
		"javascript",
		"typescript",
		"javascriptreact",
		"typescriptreact",
		"svelte",
		"html",
		"css",
		"json",
		"lua",
	},
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
	end,
})

autocmd("FileType", {
	desc = "Set indent for python/rust/c/java",
	pattern = { "python", "rust", "c", "cpp", "java", "cs" },
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.expandtab = true
	end,
})

autocmd("CursorHold", {
	desc = "Show diagnostic float",
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
	end,
})
