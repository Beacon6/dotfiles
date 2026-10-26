-- Clear search highlights
vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch)

-- Quickfix navigation
vim.keymap.set("n", "<C-j>", vim.cmd.cnext)
vim.keymap.set("n", "<C-k>", vim.cmd.cprev)

-- Format buffer
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)
