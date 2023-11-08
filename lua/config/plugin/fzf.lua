-- 配置窗口
vim.g.fzf_preview_window = { "right,40%,<50(up,50%)", "ctrl-/" };
vim.g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
vim.g.fzf_layout = {
    window = {
        width = 0.9,
        height = 0.8
    }
}
