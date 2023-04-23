local default = require"global_data"
G = {};

G.enable = false;
G.g = vim.g;
G.opt = vim.opt;
G.keymap = vim.keymap.set;

local function setvim(conf)
	G.opt.number = conf.number
	G.opt.tabstop = conf.tabstop;
	G.opt.shiftwidth = conf.shiftwidth;
	G.opt.cursorline = conf.cursorline;
	G.opt.relativenumber = conf.relativenumber;
	G.opt.termguicolors = conf.termguicolors;
	G.opt.signcolumn = conf.signcolumn;
end

function G.setup(opt)
	default = vim.tbl_deep_extend("force", default, opt);
	local conf = default;

	if conf == nil or {} then
		setvim(default);
	else
		setvim(conf);
	end
end


vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})
