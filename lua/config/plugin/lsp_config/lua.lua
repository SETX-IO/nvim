neodev = require("neodev")
config = {
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
