return {
    "navarasu/onedark.nvim",
    "nvim-lualine/lualine.nvim",
    "lukas-reineke/indent-blankline.nvim",
    "nvim-tree/nvim-tree.lua",
    "folke/neodev.nvim",
    { "akinsho/bufferline.nvim",         event = "VeryLazy" },
    { "glepnir/lspsaga.nvim",            event = "LspAttach" },
    { "windwp/nvim-autopairs",           event = "InsertEnter" },
    { "p00f/clangd_extensions.nvim",     enable = false },
    { "nvim-tree/nvim-web-devicons",     lazy = true },
    { "nvim-treesitter/nvim-treesitter", lazy = true },

    -- cmp
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        }
    },

    -- lsp
    {
        "neovim/nvim-lspconfig",
        after = "mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" }
    },
    { "williamboman/mason.nvim", build = ":MasonUpdate" },

    -- fzf
    {
        "junegunn/fzf",
        build = "cd ~/.fzf && ./install --all",
        dependencies = {
            "junegunn/fzf.vim"
        }
    },
}
