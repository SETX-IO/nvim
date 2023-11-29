treesitter = require'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        "lua", "cpp", "c" , "json",
        "kotlin", "java",
        "cmake", "make", "glsl", "ini",
        "yaml", "vimdoc"
    },
    highlight = { enable = true }
}
