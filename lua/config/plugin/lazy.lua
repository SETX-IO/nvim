lazy = require("lazy")
config = {
    ui = {
        border = "rounded",
        icons = {
            loaded = "󱝍",
            not_loaded = "󱉙",
            task = "󱝍 "
        }
    },
    git = {
        url_format = "git@github.com:%s.git"
    }
}

lazy.setup("pluginslist", config)
