require("nvchad.configs.lspconfig").defaults()

-- simple servers
vim.lsp.enable {
  "html",
  "cssls",
  "svelte",
  "tailwindcss",
  "clangd",
  "rust_analyzer",
  "omnisharp",
  "jdtls",
  "vtsls",
}

-- lua
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

-- python
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard",
        reportUnknownVariableType = false,
        reportUnknownMemberType = false,
        reportMissingTypeStubs = false,
        reportAny = false,
      },
    },
  },
})

-- ruff (disable hover so basedpyright handles it)
vim.lsp.config("ruff", {
  on_attach = function(client)
    client.server_capabilities.hoverProvider = false
  end,
})

-- emmet
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

-- enable the ones that need custom config
vim.lsp.enable {
  "lua_ls",
  "basedpyright",
  "ruff",
  "emmet_language_server",
}
