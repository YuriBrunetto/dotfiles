local opts = { noremap = true, silent = true }

-- Disable arrow keys
for _, mode in pairs({ "n", "i", "v", "x" }) do
  for _, key in pairs({ "<Up>", "<Down>", "<Left>", "<Right>" }) do
    vim.keymap.set(mode, key, "<nop>", opts)
  end
end
