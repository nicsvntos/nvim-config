return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"prettier",
				"eslint_d",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"basedpyright",
				"ruff",
				"rust_analyzer",
				"vtsls",
				"svelte",
				"tailwindcss",
				"html",
				"cssls",
				"emmet_language_server",
				"clangd",
				"dockerls",
				"docker_compose_language_service",
			},
		},
	},
}
