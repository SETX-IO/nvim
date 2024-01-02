-- Tree
vim.api.nvim_create_autocmd({ "QuitPre" }, {
  callback = function() vim.cmd("NvimTreeClose") end,
})

vim.api.nvim_create_autocmd({ "LspAttach" }, {
  callback = function()
    vim.api.nvim_exec([[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
})
