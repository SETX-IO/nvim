require "config/lazy"

require "config/noice"
require "config/nvim-treesitter"
require "config/blankline"
require "config/mason"
require "config/cmp"
require "config/lsp"
require "config/lualine"
require "config/lsp/lspaga"
require "config/nvim-autopairs"

G.g.aded_netrw = 1
G.g.loaded_netrwPlugin = 1
G.opt.termguicolors = true

vim.api.nvim_create_autocmd({"QuitPre"}, {
    callback = function() vim.cmd("NvimTreeClose") end,
})
