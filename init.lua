-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.remap")
require("config.options")
require("plugins.colorscheme")
require("plugins.markdown-preview")

function makeTransparent(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
end

makeTransparent()

if vim.loader then
  vim.loader.enable()
end
require("plugins.toggleterm")
--require("ibl")
--require("plugins.colorscheme")
vim.loader.enable()

--[[

-- Powerline setup
vim.o.rtp = vim.o.rtp .. "./usr/local/lib/python3.11/dist-packages/powerline/bindings/vim/"

-- Always show statusline
vim.o.laststatus = 2

-- Use 256 colours (Use this setting only if your terminal supports 256 colours)
vim.o.t_Co = 256

--]]
