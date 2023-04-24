local cmp = require"cmp";
local cmp_autopairs = require 'nvim-autopairs.completion.cmp'


require("nvim-autopairs").setup {
  check_comma = true,
  ts_config = {
    lua = {'string'},
    javascript = {'template_string'},
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
    highlight_grey='Comment'
  },
}

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
