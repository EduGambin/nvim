vim.pack.add({
	-- Appearance
	"https://github.com/rose-pine/neovim",
	"https://github.com/kevinhwang91/nvim-hlslens",
	"https://github.com/mawkler/modicator.nvim",
	"https://github.com/lukas-reineke/indent-blankline.nvim",

	-- LSP, completion and formatting
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/Saghen/blink.lib",
	"https://github.com/Saghen/blink.cmp",
	"https://github.com/rafamadriz/friendly-snippets",

	-- Syntax and editing
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-mini/mini.nvim",

	-- Diagnostics and command line
	"https://github.com/artemave/workspace-diagnostics.nvim",
	"https://github.com/rachartier/tiny-inline-diagnostic.nvim",
	"https://github.com/rachartier/tiny-cmdline.nvim",
	"https://github.com/rachartier/tiny-code-action.nvim",
})

-- Colorscheme
require("rose-pine").setup({ styles = { transparency = true } })
vim.cmd.colorscheme("rose-pine")

-- Separate files for big configurations
require("plugins.lsp")
require("plugins.format")
require("plugins.treesitter")
require("plugins.blink")
require("plugins.mini")
require("plugins.tiny")

-- Small plugins do not need complex operations
require("hlslens").setup() -- show number eg [1/32] next to search result inline
require("ibl").setup()
