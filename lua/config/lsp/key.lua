G.keymap("n", "<F2>", "<cmd>Lspsaga rename<CR>");
G.keymap("n", "<C-v>", "<cmd>Lspsaga code_action<CR>");
G.keymap("n", "<C-l>", "<cmd>Lspsaga term_toggle<CR>");
G.keymap("n", "<F10>", "<cmd>Lspsaga goto_definition<CR>");
G.keymap("n", "<C-o>", "<cmd>Lspsaga outline<CR>")
G.keymap("n", "<C-k>", "<cmd>Lspsaga diagnostic_jump_prev<cr>")
G.keymap("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<cr>")

G.keymap("n", "<C-s>", function()
	vim.lsp.buf.formatting_sync();
	vim.cmd "w";
end)
