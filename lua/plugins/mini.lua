require("mini.ai").setup()

require("mini.basics").setup({
	options = { extra_ui = true },
	mappings = { windows = true },
	autocommands = { basic = true },
})

require("mini.bufremove").setup()

require("mini.clue").setup({
	triggers = {
		-- Leader triggers
		{ mode = { "n", "x" }, keys = "<leader>" },
		{ mode = { "n", "x" }, keys = "<localleader>" },
		{ mode = { "n", "x" }, keys = "g" },
	},

	clues = {
		{ mode = "n", keys = "<leader>b", desc = "+[B]uffer" },
		{ mode = "n", keys = "<leader>c", desc = "+[C]ode" },
		{ mode = "n", keys = "<leader>f", desc = "+[F]ind" },
	},
})

require("mini.cmdline").setup()

require("mini.diff").setup({ view = { style = "sign" } })

require("mini.hipatterns").setup()

require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()

require("mini.indentscope").setup({ symbol = "▎" })

require("mini.input").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("mini.surround").setup()

require("mini.statusline").setup()
require("mini.tabline").setup()
require("mini.notify").setup()

vim.keymap.set("n", "<leader>ff", function()
	MiniPick.builtin.files({ tool = "fd" })
end, { silent = true, noremap = true, desc = "[F]iles" })

vim.keymap.set("n", "<leader>ft", function()
	MiniPick.builtin.grep_live({ tool = "rg" })
end, { silent = true, noremap = true, desc = "[T]ext" })
