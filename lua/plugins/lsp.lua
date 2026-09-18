require("mason").setup()
require("mason-lspconfig").setup({})
require("mason-tool-installer").setup({
	ensure_installed = {
		"stylua",
		"lua_ls",
	},
	auto_update = false,
	run_on_start = true,
})

require("workspace-diagnostics").setup()

vim.api.nvim_create_autocmd(
	"LspAttach",
	{ --  Use LspAttach autocommand to only map the following keys after the language server attaches to the current buffer
		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		callback = function(ev)
			local client = vim.lsp.get_client_by_id(ev.data.client_id)
			if client then
				if client:supports_method("workspace/diagnostic", ev.buf) then
					vim.lsp.buf.workspace_diagnostics({ client_id = client.id })
				else
					require("workspace-diagnostics").populate_workspace_diagnostics(client, ev.buf)
				end
			end

			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Enable completion triggered by <c-x><c-o>

			local opts = function(desc)
				return { buffer = ev.buf, silent = true, desc = desc }
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
				vim.diagnostic.open_float({
					border = "rounded",
				})
			end, opts("[C]ode: [D]iagnostic"))
		end,
	}
)
