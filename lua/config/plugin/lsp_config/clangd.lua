config = {
  cmd = {
    "clangd",
    "--clang-tidy",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--header-insertion=never",
    "--j=4",
    "--background-index"
  },
  capabilities = capabilities
}

lspconfig.clangd.setup(config)
