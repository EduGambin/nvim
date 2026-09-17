require("rose-pine").setup({ styles = { transparency = true } })
vim.cmd.colorscheme("rose-pine")

require("lualine").setup({ extensions = { "neo-tree" } })
require("bufferline").setup({ options = { always_show_bufferline = false } })
require("ibl").setup()

require("vim._core.ui2").enable({})
vim.o.cmdheight = 0
local cmdline = require("tiny-cmdline")
cmdline.setup({
	on_reposition = cmdline.adapters.blink,
	width = {
		value = "70%",
	},
})

-- loading spinners
local fidget = require("fidget")
fidget.setup({})

-- show number eg [1/32] next to search result inline
require("hlslens").setup()

-- show column when width exceeds for a file
require("smartcolumn").setup()
