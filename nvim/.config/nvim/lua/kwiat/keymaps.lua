-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Quickfix navigation
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

-- Format buffer
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)

-- Toggle floating terminal
vim.keymap.set({ "n", "t" }, "<C-`>", "<cmd>FloatingTerminal<CR>")
