-- Leader key
vim.g.mapleader = " "

-- Clear highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Tab management
vim.keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tw", "<cmd>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

for i = 1, 5 do
    local key = string.format("<leader>%s", i)
    local command = string.format("<cmd>%stabn<CR>", i)
    local desc = string.format("Go to tab [%s]", i)

    vim.keymap.set("n", key, command, { desc = desc })
end
