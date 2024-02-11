-- Tree
vim.api.nvim_create_autocmd({ "QuitPre" }, {
  callback = function() vim.cmd("NvimTreeClose") end,
})

vim.api.nvim_create_autocmd({ "LspAttach" }, {
  callback = function()
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype');
    local clients = vim.lsp.get_active_clients();

    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        if client.name == "cmake" then
          return
        end


        vim.api.nvim_exec([[
          augroup lsp_document_highlight
            autocmd! * <buffer>
            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          augroup END
        ]], false)
      end
    end
  end
})

--AsyncRun
vim.cmd("autocmd User AsyncRunPre copen")
