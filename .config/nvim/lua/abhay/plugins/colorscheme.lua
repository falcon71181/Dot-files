return {
  {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd [[colorscheme catppuccin-mocha]]
    end,
  },
}
