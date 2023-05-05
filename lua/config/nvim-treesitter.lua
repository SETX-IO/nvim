require("nvim-treesitter.configs").setup {
	ensure_installed = { "lua", "cpp", "c", "c_sharp" },
	highlight = { enable = true }
}
