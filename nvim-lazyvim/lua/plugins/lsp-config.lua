return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      },
      pyright = { enabled = false },
      rust_analyzer = {},
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "standard",
              reportUnknownVariable = false,
              reportUnknownMemberType = false,
              reportMissingTypeStubs = false,
              reportAny = false,
              reportUnknownArgumentType = false,
              reportUnknownParameterType = false,
              reportUnknownVariableType = false,
              reportAttributeAccessIssue = false,
            },
          },
        },
      },
      ruff = {
        on_attach = function(client, _)
          client.server_capabilities.hoverProvider = false
        end,
      },
      emmet_language_server = {
        filetypes = {
          "html",
          "css",
          "scss",
          "sass",
          "less",
          "javascriptreact",
          "typescriptreact",
          "svelte",
          "vue",
        },
      },
      clangd = {},

      ts_ls = {},
      svelte = {},
      tailwindcss = {},
      html = {},
      cssls = {},
      dockerls = {},
      docker_compose_language_service = {},
    },
  },
}
