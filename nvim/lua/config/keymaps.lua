local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- keymap.set("n", "te", "tabedit", opts)
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

for _, mode in pairs({ "n", "i", "v", "x" }) do
  for _, key in pairs({ "<Up>", "<Down>", "<Left>", "<Right>" }) do
    vim.keymap.set(mode, key, "<nop>", opts)
  end
end
