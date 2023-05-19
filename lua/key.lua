G.map("n", "<C-s>", "<cmd>w<CR>");

-- 窗口移动Key
G.map('n', "<C-l>", "<C-w>l");
G.map('n', "<C-h>", "<C-w>h");
G.map('n', "<C-j>", "<C-w>j");
G.map('n', "<C-k>", "<C-w>k");

-- 上下跳转
G.map('n', 'j', [[v:count ? 'j' : 'gj']], {noremap = true, expr = true });
G.map('n', 'k', [[v:count ? 'k' : 'gk']], {noremap = true, expr = true });
