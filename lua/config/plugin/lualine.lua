lualine = require "lualine"

local Lspserver = {
  function()
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype');
    local clients = vim.lsp.get_active_clients();
    if next(clients) == nil then
      return ''
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        if client.name == "kotlin_language_server" then
          return "kotlin_ls"
        end
        return client.name
      end
    end
    return ''
  end,
  icon = "",
  color = { fg = '#ffffff', gui = 'bold' }
}

config = {
  options = {
    fmt = string.lower,
    component_separators = '',
    section_separators = '',

  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        function()
          return '█'
        end,
        color = { bg = "#3D4350", fg = "#51afef" },
        padding = { left = 0, right = 1 },
      },
      {
        'mode',
        fmt = function(str) return "— " .. str .. " —" end,
        color = {
          bg = '#3D4350'
        },
        padding = { left = 0, right = 1 }
      },
      {
        "diagnostics",
        sections = { 'error', 'warn' },
        always_visible = true,
        color = { bg = "#3D4350" }
      },
      { "branch", color = { bg = "#3D4350", fg = "#c678dd" } },
    },
    lualine_x = {
      Lspserver,
      { "filetype", color = { bg = "#3D4350", fg = "#ABB2BF" }, padding = { right = 0, left = 1 } },
      { "location", color = { bg = "#3D4350" },                 padding = { left = 0, right =  1} },
      {
        function()
          return '█'
        end,
        color = { bg = "#3D4350", fg = "#51afef" },
        padding = { left = 0 },
      },
    },
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {
    "nvim-tree",
    "lazy",
    "mason"
  }
}

lualine.setup(config)
