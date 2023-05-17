-- 配置窗口
G.g.fzf_preview_window = { "right,40%,<50(up,50%)", "ctrl-/" };
G.g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
G.g.fzf_layout = {
	window = {
		width = 0.9,
		height = 0.8
	}
}

G.map('n', "<C-f>", "<cmd>Files<cr>");
G.map('n', "<C-G>", "<cmd>GitFiles?<cr>");
