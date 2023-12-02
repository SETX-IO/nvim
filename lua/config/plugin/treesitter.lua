treesitter = require 'nvim-treesitter.configs'
config = {
  ensure_installed = {
    "lua", "cpp", "c", "json",
    "kotlin", "java",
    "javascript", "typescript",
    "cmake", "make", "glsl", "ini",
    "yaml", "vimdoc"
  },
  highlight = { enable = true }
}

treesitter.setup(config)
