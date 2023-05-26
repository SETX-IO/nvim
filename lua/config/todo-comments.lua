-- TODO: todo插件配置
local todo = require("todo-comments")

todo.setup {

}


G.map('n', "tj", function()
	todo.jump_next()
end, { desc = "Next todo comment" });
G.map('n', "tk", function()
	todo.jump_prev()
end, { desc = "Next todo comment" });
