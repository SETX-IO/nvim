neodev = require("neodev")
config = {
    cmd = {
        "lua-language-server",
        "--locale=zh-cn"
    },
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace"
            },
            runtime = {
                version = 'Lua 5.4',
            }
        }
    }
}

neodev.setup()
lspconfig.lua_ls.setup(config)
