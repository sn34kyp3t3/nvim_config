function MakeTransparent()
  vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
end

MakeTransparent()

return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      transparent = true,
      colorscheme = "gruvbox",
    },
  },

  --add tokyonight
  { "folke/tokyonight.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      transparent = true,
      colorscheme = "tokyonight",
    },
  },
  {
    "arturgoms/moonbow.nvim",
    priority = 1000,
    config = function()
      vim.cmdc.colorscheme("moonbow")
    end,
  },
}
