-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
map("i", "jj", "<Esc>", { noremap = false })
map("i", "<Home>", "<C-o>^")
map("n", "<Home>", "^")
map("n", "<Leader>e", function()
  require("mini.files").open()
end, { desc = "Mini files explorer" })

-- Move cursor remaps
-- map("n", "h", "j")
-- map("n", "d", "h")
-- map("n", "t", "k")
-- map("n", "n", "l")
--
-- Delete
-- map("n", "e", "d")
-- map("n", "ee", "dd")

-- Yank
-- map("n", "f", "y")
-- map("n", "ff", "yy")

-- Put
-- map("n", "l", "p")
-- map("n", ".", "<Cmd><Cr>", { noremap = false })
-- vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
-- vim.api.nvim_set_keymap("i", ".", "<Cmd>", { noremap = false })
-- vim.api.nvim_set_keymap("n", ".", "<Cmd>", { noremap = false })
-- map("n", "<Right>", "l", { desc = "Right", expr = true, silent = true })
-- map("n", "<Left>", "h", { desc = "Left", expr = true, silent = true })
