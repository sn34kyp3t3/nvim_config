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
