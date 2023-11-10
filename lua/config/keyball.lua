-- Bufferline
setkey("n", "<C-d>", function() bufferline.cycle(1) end)
setkey("n", "<C-a>", function() bufferline.cycle(-1) end)

-- nvim-tree
tree_api = require "nvim-tree.api"
setkey("n", "<C-l>", function() tree_api.tree.toggle() end)
setkey("n", "<C-f>", function() tree_api.tree.find_file() end)

-- lspsaga
setkey("n", "<C-t>", "<cmd>Lspsaga term_toggle<cr>")
setkey("n", "<F10>", "<cmd>Lspsaga outline<cr>")
setkey("n", "<F2>", "<cmd>Lspsaga rename<cr>")
setkey("n", "dn", "<cmd>Lspsaga diagnostic_jump_next<cr>")
setkey("n", "dp", "<cmd>Lspsaga diagnostic_jump_prev<cr>")

-- lsp
vim.api.nvim_create_autocmd("LspAttach", {
    callback =
        function(args)
            local buf = args.buf
            vim.api.nvim_buf_set_keymap(buf, "n", "<C-r>", "<cmd>lua vim.lsp.buf.format()<cr>", { noremap = true })
        end
})

-- fzf
setkey('n', "<C-f>", "<cmd>Files<cr>")
setkey('n', "<C-G>", "<cmd>GitFiles?<cr>")
