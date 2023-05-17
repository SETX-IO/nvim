G.map("n", "<F2>", "<cmd>Lspsaga rename<CR>");
G.map("n", "<C-v>", "<cmd>Lspsaga code_action<CR>");
G.map("n", "<C-t>", "<cmd>Lspsaga term_toggle<CR>");
G.map("n", "<F10>", "<cmd>Lspsaga goto_definition<CR>");
G.map("n", "<C-o>", "<cmd>Lspsaga outline<CR>");
G.map("n", "<C-k>", "<cmd>Lspsaga diagnostic_jump_prev<cr>");
G.map("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<cr>");
G.map("n", "<C-d>", "<cmd>Lspsaga show_buf_diagnostics<cr>");

G.map("n", "<C-s>", function()
	vim.lsp.buf.format();
	vim.cmd "w";
end)
