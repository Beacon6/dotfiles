return {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
        {
            's',
            function()
                require('flash').jump()
            end,
            desc = 'Flash',
        },
    },
}
