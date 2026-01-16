return {
    'folke/persistence.nvim',
    event = 'BufReadPre',
    opts = {},
    keys = {
        {
            '<leader>ls',
            function()
                require('persistence').load()
            end,
            desc = '[L]oad [S]ession',
        },
    },
}
