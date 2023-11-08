lazy = require("lazy")
config = {
    ui = {
        border = "rounded",
        icons = {
            loaded = "󱝍",
            not_loaded = "󱉙",
            task = "󱝍 "
        }
    }
}

lazy.setup("pluginslist", config)
