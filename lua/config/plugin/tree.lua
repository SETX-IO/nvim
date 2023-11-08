tree = require "nvim-tree"
config = { 
    renderer = {
        indent_markers = { enable = true },
        icons = {
            show = {
                folder_arrow = false
            }
        }
    }
}

tree.setup(config)
