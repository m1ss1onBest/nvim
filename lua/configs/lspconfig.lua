-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = vim.lsp.config

-- EXAMPLE
local servers = { "html", "cssls", "rust_analyzer", "pyright", "clangd", "tinymist" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    ['rust-analyzer'] = {
      assist = {
          importEnforceGranularity = true,
          importPrefix = 'crate',
        },
        cargo = {
          allFeatures = true,
        },
        checkOnSave = true,
        inlayHints = { locationLinks = false },
        diagnostics = {
          enable = true,
          experimental = {
            enable = true,
        },
      },
    },
  },
}

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
