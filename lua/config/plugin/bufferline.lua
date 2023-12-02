bufferline = require "bufferline"
config = {
  offsets = {
    {
      filetype = "NvimTree",
      text = "File Explorer",
      text_align = "center",
      separator = true
    }
  }
}

bufferline.setup { options = config }
