treesitter = require'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        "lua", "cpp", "c" , "json",
        "cmake", "make", "glsl", "ini",
        "yaml", "vimdoc"
    },
    highlight = { enable = true }
}
