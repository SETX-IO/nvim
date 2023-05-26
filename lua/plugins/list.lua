require "plugins/lualine_extend"

return {
	{
		"lukas-reineke/indent-blankline.nvim",
		"nvim-lualine/lualine.nvim",
		"windwp/nvim-autopairs",
		"kyazdani42/nvim-web-devicons"
	},
	{
		"olimorris/onedarkpro.nvim",
		config = function() vim.cmd "colorscheme onedark" end
	},
	{
		"folke/noice.nvim",
		dependencies = {
			'MunifTanjim/nui.nvim',
			'rcarriga/nvim-notify'
		}
	},
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		dependencies = { "nvim-treesitter/nvim-treesitter" }
	},
	{
		"nvim-tree/nvim-tree.lua",
		keys = { { "<C-l>", "<cmd>NvimTreeToggle<CR>" } }
	},
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		config = {}
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets"
		}
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim"
		},
		after = "mason.nvim"
	},
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate"
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = { 'lua', "cpp", "cc", "c", "h" }
	},
	{
		"lewis6991/gitsigns.nvim",
		config = {
			signs = {
				delete       = { text = '│' },
				topdelete    = { text = '│' },
				changedelete = { text = '│' },
				untracked    = { text = '│' }
			}
		}
	},
	{
		"windwp/nvim-autopairs"
	},
	{
		"junegunn/fzf",
		build = "cd ~/.fzf && ./install --all",
		dependencies = {
			"junegunn/fzf.vim"
		}
	},
	{
		"numToStr/Comment.nvim",
		config = {
			toggler = {
				line = '<C-m>'
			}
		}
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	}
}
