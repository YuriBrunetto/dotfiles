return {
  -- add catppuccin
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   opts = {
  --     flavour = "macchiato",
  --     background = {
  --       dark = "mocha",
  --     },
  --     transparent_background = true,
  --   },
  -- },

  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    opts = {
      background = "dark",
    },
  },

  -- configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
