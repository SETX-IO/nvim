local cmp = require "cmp"
local basic = require "config.plugin.cmp.basic"

local source = {
  { name = 'nvim_lsp' },
  { name = "luasnip" },
  { name = "cmp_luasnip" },
  { name = 'buffer' }
}

local cmp_kinds = {
  Text = '',
  Method = '',
  Function = '',
  Constructor = '',
  Field = '',
  Variable = '',
  Class = '',
  Interface = '',
  Module = '',
  Property = '',
  Unit = '',
  Value = '',
  Enum = '',
  Keyword = '',
  Snippet = '',
  Color = '',
  File = '',
  Reference = '',
  Folder = '',
  EnumMember = '',
  Constant = '',
  Struct = '',
  Event = '',
  Operator = '',
  TypeParameter = '',
}

config = {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(_, vim_item)
      vim_item.kind = string.format("%s", cmp_kinds[vim_item.kind])
      return vim_item
    end
  },
  experimental = { ghost_text = true },
  mapping = cmp.mapping.preset.insert(basic.key),
  sources = cmp.config.sources(source),
}

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_vscode").load {
  vim.fn.stdpath("config") .. "/snippets",
}

vim.opt.completeopt = { "menuone", "noselect", "menu" }
cmp.setup(config)
