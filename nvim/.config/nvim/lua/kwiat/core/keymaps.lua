-- Clear search highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move lines
vim.keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

vim.keymap.set('v', '∆', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'Ż', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

-- Yank to system clipboard
vim.keymap.set('v', '<leader>y', [["+y]], { desc = 'Yank to system clipboard' })

-- Tab management
vim.keymap.set('n', '<leader>tt', '<cmd>tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tw', '<cmd>tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
vim.keymap.set('n', '<leader>tb', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })
vim.keymap.set('n', '<leader>th', '<cmd>-tabm<CR>', { desc = 'Move tab to the left' })
vim.keymap.set('n', '<leader>tl', '<cmd>+tabm<CR>', { desc = 'Move tab to the right' })

for i = 1, 5 do
    local key = string.format('<leader>t%s', i)
    local command = string.format('<cmd>%stabn<CR>', i)
    local desc = string.format('Go to tab %s', i)

    vim.keymap.set('n', key, command, { desc = desc })
end
