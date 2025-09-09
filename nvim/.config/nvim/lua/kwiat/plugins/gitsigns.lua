return {
    'lewis6991/gitsigns.nvim',
    config = function()
        local gitsigns = require('gitsigns')
        gitsigns.setup({
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        })

        vim.keymap.set('n', '<leader>ga', gitsigns.stage_hunk, { desc = 'Git stage hunk' })
        vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = 'Git reset hunk' })
        vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'Git preview hunk' })
        vim.keymap.set('n', '<leader>gb', gitsigns.blame_line, { desc = 'Git blame' })
    end,
}
