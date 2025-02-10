local set_keymaps = require("core.plugins.configs.lsp.keymaps")
local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("lspconfig").ts_ls.setup({
  on_attach = set_keymaps,
  capabilities = capabilities
})

