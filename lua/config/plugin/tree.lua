tree = require "nvim-tree"
config = {
  renderer = {
    indent_markers = { enable = true },
    icons = {
      show = {
        folder_arrow = false
      },
      glyphs = {
        git = {
          unstaged = "M",
          staged = "A",
          unmerged = "",
          renamed = "",
          untracked = "U",
          deleted = "",
          ignored = "",
        }
      }
    }
  },
  diagnostics = { enable = true }
}


tree.setup(config)
