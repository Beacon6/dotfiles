return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        spec = {
            { '<leader>b', group = 'Buffer' },
            { '<leader>c', group = 'Code' },
            { '<leader>d', group = 'Diagnostics' },
            { '<leader>g', group = 'Git' },
            { '<leader>s', group = 'Search' },
            { '<leader>t', group = 'Tab' },
        },
    },
}
