require "config.plugin.lsp.mason"
require "config.plugin.lsp.lspsaga"

lspconfig = require "lspconfig"
capabilities = require("cmp_nvim_lsp").default_capabilities()
mason_config = require("mason-lspconfig")

mason_config.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
    }
  end
}

signs = { Error = " ", Warn = " ", Hint = "󰋗 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
