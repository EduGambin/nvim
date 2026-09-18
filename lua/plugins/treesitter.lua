require("nvim-treesitter").install({
	"bash",
	"diff",
	"lua",
	"luadoc",
	"luap",
	"markdown",
	"markdown_inline",
	"query",
	"vim",
	"vimdoc",
	"typst",
})

-- Automatically tries to enable treesitter for any file.
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("TreesitterSetup", { clear = true }),
	callback = function(args)
		if pcall(vim.treesitter.start, args.buf) then
			vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
