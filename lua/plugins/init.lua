vim.pack.add({
	-- File navigation
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/refractalize/oil-git-status.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/nvim-telescope/telescope-fzf-native.nvim",
	"https://github.com/nvim-telescope/telescope-ui-select.nvim",
	"https://github.com/nvim-telescope/telescope-frecency.nvim",

	-- Appearance
	"https://github.com/rose-pine/neovim",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/akinsho/bufferline.nvim",
	"https://github.com/lukas-reineke/indent-blankline.nvim",

	-- LSP, completion and formatting
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	"https://github.com/b0o/SchemaStore.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/rachartier/tiny-code-action.nvim",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/Saghen/blink.lib",
	"https://github.com/Saghen/blink.cmp",
	"https://github.com/rafamadriz/friendly-snippets",

	-- Syntax and editing
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-mini/mini.nvim",

	-- Diagnostics and command line
	"https://github.com/rachartier/tiny-inline-diagnostic.nvim",
	"https://github.com/rachartier/tiny-cmdline.nvim",
	"https://github.com/j-hui/fidget.nvim",
	"https://github.com/artemave/workspace-diagnostics.nvim",

	-- Git
	"https://github.com/lewis6991/gitsigns.nvim",
})

require("plugins.ui")
require("plugins.blink")
require("plugins.treesitter")
require("plugins.diagnostics")
require("plugins.mini")
