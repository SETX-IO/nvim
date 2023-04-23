local cmp = require "cmp" 
local key = require "config/cmp/key"

cmp.setup {
	snippet = {
		expand = function(args)
      require('luasnip').lsp_expand(args.body)
		end,
	},
	  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
	mapping = key,
	sources = cmp.config.sources(
		{ 
			{ name = 'nvim_lsp' },
			{ name = "luasnip" }
		},
		{ { name = 'buffer' } }
	)
}

