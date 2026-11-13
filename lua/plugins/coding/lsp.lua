require("mason").setup() -- required by mason-lspconfig
require("mason-lspconfig").setup() -- required by mason-lspconfig
require("mason-tool-installer").setup({ -- automatic setup of LSP servers
	ensure_installed = {
		"stylua",
		"lua_ls",
		"tinymist",
		"clangd",
		"clang-format",
	},
})

local function set_keymaps(bufnr)
	local function opts(desc)
		return { buffer = bufnr, silent = true, desc = desc }
	end

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("[G]o to [D]efinition"))
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("[G]o to [I]mplementation"))
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts("[G]o to [R]eferences"))

	vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts("[C]ode: [R]ename"))
	vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, opts("[C]ode: [H]over"))
	vim.keymap.set({ "n", "v" }, "<leader>ca", function()
		require("tiny-code-action").code_action({
			filter = function(action)
				return not action.disabled
			end,
		})
	end, opts("[C]ode: [A]ction"))
	vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts("[C]ode: [F]ormat"))
	vim.keymap.set("n", "<leader>cd", function()
		vim.diagnostic.open_float({ border = "rounded" })
	end, opts("[C]ode: [D]iagnostic"))
end

local function populate_diagnostics(client, bufnr)
	if client:supports_method("workspace/diagnostic", bufnr) then
		vim.lsp.buf.workspace_diagnostics({ client_id = client.id })
	else
		require("workspace-diagnostics").populate_workspace_diagnostics(client, bufnr)
	end
end

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client then
			populate_diagnostics(client, ev.buf)
		end

		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
		set_keymaps(ev.buf)
	end,
})

-- I have not figured out how to do this in the specific Typst file
vim.api.nvim_create_user_command("OpenPdf", function()
	local filepath = vim.api.nvim_buf_get_name(0)
	if filepath:match("%.typ$") then
		local pdf_path = filepath:gsub("%.typ$", ".pdf")
		vim.system({ "zathura", "-fork", pdf_path })
	end
end, {})
