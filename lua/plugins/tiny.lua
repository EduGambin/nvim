vim.o.cmdheight = 0
require("vim._core.ui2").enable({})
require("tiny-cmdline").setup({ on_reposition = require("tiny-cmdline").adapters.blink })

require("tiny-inline-diagnostic").setup({ preset = "powerline" })
vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics

-- the tiny-code-action module is set in LSP
