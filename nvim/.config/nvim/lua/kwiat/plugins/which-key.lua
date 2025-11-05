return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
        vim.opt.timeout = true
        vim.opt.timeoutlen = 500
    end,
    config = function()
        local wk = require('which-key')
        wk.setup({
            preset = 'helix',
        })

        wk.add({
            { '<leader>b', group = 'Buffer' },
            { '<leader>g', group = 'Git' },
            { '<leader>s', group = 'Search' },
            { '<leader>t', group = 'Tab' },
            { '<leader>x', group = 'Diagnostics' },
        })
    end,
}
