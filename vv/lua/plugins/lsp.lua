return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
					},
				},
			})
			vim.lsp.config("basedpyright", {
				settings = {
					basedpyright = {
						analysis = {
							typeCheckingMode = "standard",
							reportAny = false,
							reportUnknownVariableType = false,
							reportUnknownMemberType = false,
							reportMissingTypeStubs = false,
							reportUnknownArgumentType = false,
							reportUnknownParameterType = false,
							reportAttributeAccessIssue = false,
						},
					},
				},
			})
			vim.lsp.config("ruff", {
				on_attach = function(client, _)
					client.server_capabilities.hoverProvider = false
				end,
			})
			vim.lsp.config("rust_analyzer", {})
			vim.lsp.config("vtsls", {
				settings = {
					typescript = {
						inlayHints = {
							parameterNames = { enabled = "literals" },
							variableTypes = { enabled = true },
							returnTypes = { enabled = true },
						},
					},
				},
			})
			vim.lsp.config("svelte", {})
			vim.lsp.config("tailwindcss", {})
			vim.lsp.config("html", {})
			vim.lsp.config("cssls", {})
			vim.lsp.config("emmet_language_server", {
				filetypes = {
					"html",
					"css",
					"scss",
					"sass",
					"less",
					"javascriptreact",
					"typescriptreact",
					"svelte",
				},
			})
			vim.lsp.config("clangd", {})
			vim.lsp.config("dockerls", {})
			vim.lsp.config("docker_compose_language_service", {})

			vim.lsp.enable({
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
			})
			vim.lsp.config("*", {
				capabilities = {
					textDocument = {
						semanticTokens = {
							multilineTokenSupport = true,
						},
					},
				},
			})
		end,
	},
}
