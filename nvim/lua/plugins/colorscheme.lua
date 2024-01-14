return {
  -- add gruvbox
  { "kepano/flexoki-neovim" },

  -- configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "flexoki-dark",
    },
  },
}
