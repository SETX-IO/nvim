bufferline = require "bufferline"

local offsets = {
  {
    filetype = "NvimTree",
    text = "File Explorer",
    text_align = "center",
    separator = true
  }
}

config = {
  indicator = { style = 'node' },
  diagnostics = "nvim_lsp",
  offsets = offsets,
  separator_style = "thin",
  show_buffer_close_icons = false,
}

bufferline.setup { options = config }
