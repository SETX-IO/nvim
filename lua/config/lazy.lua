local default = {
  "olimorris/onedarkpro.nvim",
  config = function() vim.cmd"colorscheme onedark" end
}

local opts = {};
if G.enable then
  opts = require("plugins.list");
else
  opts = default;
end

local config = {

}

require("lazy").setup(opts, config);
