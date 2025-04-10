-- Leader key
vim.g.mapleader = " "

-- Clear highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
