local set_keymaps = require("configs.lsp.keymaps")
local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("lspconfig").pylsp.setup({
  on_attach = set_keymaps,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          -- ignore = {'W391'},
          maxLineLength = 120
        }
      }
    }
  }
})

require("lspconfig").pyright.setup({
  on_attach = set_keymaps,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        diagnosticSeverityOverrides = {
          -- because for some reason its unable to figure out imports.
          -- just disabling this here and leaving it to pylsp
          reportMissingImports = "none"
        }
      }
    }
  }
})
