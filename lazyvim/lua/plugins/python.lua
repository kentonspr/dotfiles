return {
  "nvim-lspconfig",
  opts = {
    ---@type lspconfig.options
    servers = {
      pyright = {
        capabilities = (function()
          local capabilities = vim.lsp.protocol.make_client_capabilities()
          capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
          return capabilities
        end)(),
        settings = {
          python = {
            analysis = {
              useLibraryCodeForTypes = true,
              diagnosticSeverityOverrides = {
                reportUnusedVariable = "warning", -- or anything
              },
              typeCheckingMode = "basic",
            },
          },
        },
      },
      ruff_lsp = {
        on_attach = function(client, _)
          client.server_capabilities.hoverProvider = false
        end,
      },
    },
  },
}
