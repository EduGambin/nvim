-- Colorscheme
require("rose-pine").setup({ styles = { transparency = true } })
vim.cmd.colorscheme("rose-pine")

-- Icons
require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()

-- Statusline
require("lualine").setup({})

-- Bufferline
require("bufferline").setup({ options = { always_show_bufferline = false } })

-- Indentation lines
require("ibl").setup()

-- Notification system
require("fidget").setup({ notification = { override_vim_notify = true } })
