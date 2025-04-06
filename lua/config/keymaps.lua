-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Press 'jk' or 'kj' quickly to exit insert mode
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })

-- Delete without copying into the default register (black hole register)
vim.keymap.set("n", "d", '"_d', { desc = "Delete without copying" })
vim.keymap.set("x", "d", '"_d', { desc = "Delete selection without copying" })

-- Delete single character without copying into register
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without copying" })

-- Add a blank line below without entering Insert mode
vim.keymap.set("n", "<leader>o", "o<Esc>", { desc = "Add blank line below" })

-- Scroll half a page and keep the cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })

-- Scroll up and keep the cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- Find next/previous search result and center the screen
vim.keymap.set("n", "n", "nzzzv", { desc = "Find next and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Find previous and center" })

-- Stay in indent mode when indenting in Visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and stay in mode" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and stay in mode" })

-- Paste without overwriting the clipboard (keep last yanked text)
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without replacing clipboard" })
