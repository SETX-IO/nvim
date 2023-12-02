-- Tree
vim.api.nvim_create_autocmd({ "QuitPre" }, {
  callback = function() vim.cmd("NvimTreeClose") end,
})
