return {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    event = 'VeryLazy',
    keys = {
        { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics' },
        { '<leader>xw', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Workspace diagnostics' },
    },
}
