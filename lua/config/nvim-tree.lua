require("nvim-tree").setup {
	sync_root_with_cwd = true,
	renderer = {
		full_name = true,
		group_empty = true,
		special_files = {},
		symlink_destination = false,
		indent_markers = {
			enable = true,
		},
		icons = {
			git_placement = "signcolumn",
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	}
}
