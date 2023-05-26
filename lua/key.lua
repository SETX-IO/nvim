G.map('v', 'J', "<cmd>m '>+1<CR>gv=gv");
G.map('v', 'K', "<cmd>m '<-2<CR>gv=gv");


-- 窗口移动Key
G.map('n', "<C-l>", "<C-w>l");
G.map('n', "<C-h>", "<C-w>h");
G.map('n', "<C-j>", "<C-w>j");
G.map('n', "<C-k>", "<C-w>k");

-- 上下跳转
G.map('n', 'j', [[v:count ? 'j' : 'gj']], { noremap = true, expr = true });
G.map('n', 'k', [[v:count ? 'k' : 'gk']], { noremap = true, expr = true });

--G.map('n', "tj", function ()
--	todo.jump_next()
--end, { desc = "Next todo comment" });
--G.map('n', "tk", function ()
--	todo.jump_prev()
-- end, { desc = "Next todo comment" });
