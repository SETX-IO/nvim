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
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {
            { 'mode', fmt = function(str) return str:sub(1,1) end }
        },
        lualine_b = {
            "branch",
            "diagnostics"
        },
        lualine_c = {
            "filename",
        },
        lualine_x = {

        },
        lualine_y = {
            Lspserver,
            "filetype"
        },
        lualine_z = {
            "location"
        }
    },
    extensions = {
        "nvim-tree",
        "lazy",
        "mason"
    }
}

lualine.setup(config)
