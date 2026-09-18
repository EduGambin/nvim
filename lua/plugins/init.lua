vim.pack.add({
	-- UI
	"https://github.com/rose-pine/neovim",
	"https://github.com/nvim-mini/mini.icons",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/akinsho/bufferline.nvim",
	"https://github.com/lukas-reineke/indent-blankline.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/j-hui/fidget.nvim",

	-- Treesitter
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",

	-- Editing
	"https://github.com/nvim-mini/mini.ai",
	"https://github.com/kylechui/nvim-surround",
	"https://github.com/windwp/nvim-autopairs",

	-- Coding
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/Saghen/blink.lib",
	"https://github.com/Saghen/blink.cmp",
	"https://github.com/rafamadriz/friendly-snippets",
	"https://github.com/rachartier/tiny-code-action.nvim",
	"https://github.com/artemave/workspace-diagnostics.nvim",
	"https://github.com/rachartier/tiny-inline-diagnostic.nvim",
})

require("plugins.ui")
require("plugins.treesitter")
require("plugins.editing")
require("plugins.coding")
