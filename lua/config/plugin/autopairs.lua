autopairs = require("nvim-autopairs")
config = {
    check_comma = true,
    ts_config = {
        lua = { 'string' },
        javascript = { 'template_string' },
        java = false
    },
    fast_wrap = {
        map = '<M-e>',
        chars = { '{', '[', '(', '"', "'" },
        pattern = [=[[%'%"%>%]%)%}%,]]=],
        end_key = '$',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        check_comma = true,
        highlight = 'Search',
        highlight_grey = 'Comment'
    }
}

autopairs.setup(config)

