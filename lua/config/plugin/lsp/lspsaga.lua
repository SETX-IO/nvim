lspsaga = require "lspsaga"

lspsaga.setup {
  finder = {
    layout = "normal"
  },
  diagnostic = {
    show_layout = "normal"
  },
  renamr = {
    auto_save = true,
    make = "p"
  },
  lightbulb = {
    virtual_text = false
  },
  symbol_in_winbar = {
    enable = true,
    separator = '  '
  }
}
