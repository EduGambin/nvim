require("luasnip.loaders.from_vscode").lazy_load()

local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup({
	snippets = { preset = "luasnip" },
	enabled = function()
		return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype)
	end,
})
