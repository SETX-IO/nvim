noice = require "noice"
notify = require "notify"

config = {
    lsp = {
        progress = {
            enabled = false
        },
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        }
    },
    cmdline = {
        format = {
            search_down = {
                view = "cmdline",
            },
            search_up = {
                view = "cmdline",
            }
        }
    },
    presets = {
        bottom_search = true,
        command_palette = true
    }
}

notify.setup({
    fps = 1,
    render = "wrapped-compact",
    stages = "static"
})

noice.setup(config)
