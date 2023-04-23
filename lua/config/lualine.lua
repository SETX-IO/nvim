require('lualine').setup {
  options = {
    theme = Bubbles,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch', "diff" },
    lualine_c = { 'fileformat', "diagnostics" },
    lualine_x = {
			{
        require("noice").api.status.command.get,
        cond = require("noice").api.status.command.has,
        color = { fg = "#ff9e64" },
      }
		},
    lualine_y = { Lspserver, 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
	extensions = { "nvim-tree", "lazy" }
}
