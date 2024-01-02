-- INFO: Bufferline
setkey("n", "ln", function() bufferline.cycle(1) end)
setkey("n", "lp", function() bufferline.cycle(-1) end)
-- BufferLineCloseOthers
setkey("n", "bc", bufferline.close_others)
setkey("n", "bcw", bufferline.close_with_pick)

-- INFO: nvim-tree
tree_api = require "nvim-tree.api"
setkey("n", "tt", tree_api.tree.toggle)
setkey("n", "tf", tree_api.tree.find_file)

-- INFO: Todo
setkey('n', 'tn', todo.jump_next)
setkey('n', 'tp', todo.jump_prev)

-- INFO: lspsaga
setkey("n", "lt", "<cmd>Lspsaga term_toggle<cr>")
setkey("n", "lo", "<cmd>Lspsaga outline<cr>")
setkey("n", "rm", "<cmd>Lspsaga rename<cr>")
setkey("n", "dn", "<cmd>Lspsaga diagnostic_jump_next<cr>")
setkey("n", "dp", "<cmd>Lspsaga diagnostic_jump_prev<cr>")
setkey("n", "ac", "<cmd>Lspsaga code_action<cr>")

-- INFO: lsp
vim.api.nvim_create_autocmd("LspAttach", {
  callback =
      function(args)
        local buf = args.buf
        local opt = { buffer = buf }
        vim.api.nvim_buf_set_keymap(buf, "n", "ro", "<cmd>lua vim.lsp.buf.format()<cr>", { noremap = true })
        setkey("n", "gd", vim.lsp.buf.declaration, opt)
      end
})

-- INFO: fzf
setkey('n', "tf", "<cmd>Files<cr>")
setkey('n', "tg", "<cmd>GitFiles?<cr>")
