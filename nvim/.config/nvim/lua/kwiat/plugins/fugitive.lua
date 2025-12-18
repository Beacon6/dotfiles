return {
    'tpope/vim-fugitive',
    event = 'VeryLazy',
    config = function()
        vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>', { desc = 'Git status' })
        vim.keymap.set('n', '<leader>gd', '<cmd>Gvdiffsplit<CR>', { desc = 'Git diff' })
        vim.keymap.set('n', '<leader>gl', '<cmd>Git log<CR>', { desc = 'Git log' })
    end,
}
