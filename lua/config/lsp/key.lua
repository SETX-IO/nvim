G.keymap("n", "<F2>", 	"<cmd>Lspsaga rename<CR>");
G.keymap("n", "<C-v>", 	"<cmd>Lspsaga code_action<CR>")
G.keymap("n", "<C-l>", 	"<cmd>Lspsaga term_toggle<CR>")


G.keymap("n", "<C-s>", function()
	vim.lsp.buf.formatting_sync();
	vim.cmd "w";
end)
