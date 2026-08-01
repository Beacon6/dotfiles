return {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        local gitsigns = require('gitsigns')
        gitsigns.setup({
            signs = {
                add = { text = '▎' },
                change = { text = '▎' },
                delete = { text = '' },
                topdelete = { text = '' },
                changedelete = { text = '▎' },
                untracked = { text = '▎' },
            },
            signs_staged = {
                add = { text = '▎' },
                change = { text = '▎' },
                delete = { text = '' },
                topdelete = { text = '' },
                changedelete = { text = '▎' },
            },
        })

        vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = '[G]it [P]review' })
        vim.keymap.set('n', '<leader>gi', gitsigns.preview_hunk_inline, { desc = '[G]it [I]nline Preview' })
        vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, { desc = '[G]it [R]eset' })
        vim.keymap.set('n', '<leader>gb', gitsigns.blame, { desc = '[G]it [B]lame' })
        vim.keymap.set('n', '<leader>gt', gitsigns.stage_hunk, { desc = '[G]it [T]oggle Stage' })
    end,
}
