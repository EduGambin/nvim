vim.diagnostic.config({
	underline = true,
	virtual_text = false, -- required for tiny-inline-diagnostic
	update_in_insert = false,
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
})

require("tiny-inline-diagnostic").setup({ preset = "powerline" })
require("workspace-diagnostics").setup()
