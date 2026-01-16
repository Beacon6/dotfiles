return {
    'folke/trouble.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
        {
            '<leader>dp',
            '<CMD>Trouble diagnostics toggle<CR>',
            desc = '[D]iagnostics - [P]roject',
        },
        {
            '<leader>db',
            '<CMD>Trouble diagnostics toggle filter.buf=0<CR>',
            desc = '[D]iagnostics - [B]uffer',
        },
    },
}
