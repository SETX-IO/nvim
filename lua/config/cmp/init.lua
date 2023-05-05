require("config/cmp/cmdline");
local cmp = require "cmp";
local key = require "config/cmp/key";

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

require("luasnip.loaders.from_vscode").lazy_load();
require("luasnip.loaders.from_vscode").load {
	vim.fn.stdpath("config") .. "/snippets";
}

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
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(_, vim_item)
			-- Kind icons
			vim_item.kind = string.format("%s", cmp_kinds[vim_item.kind])
			-- This concatonates the icons with the name of the item kind

			-- Source
			--[[vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[LaTeX]",
      })[entry.source.name]
			]]
			return vim_item
		end
	},
	experimental = { ghost_text = true },
	mapping = key,
	sources = cmp.config.sources(
		{
			{ name = 'nvim_lsp' },
			{ name = "luasnip" }
		},
		{ { name = 'buffer' } }
	)
}
