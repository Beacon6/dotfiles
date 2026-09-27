return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    opts = {
        sections = {
            lualine_b = {
                { 'branch', icon = ' ' },
                {
                    'diff',
                    symbols = {
                        added = ' ',
                        modified = ' ',
                        removed = ' ',
                    },
                },
                {
                    'diagnostics',
                    symbols = {
                        error = ' ',
                        warn = ' ',
                        hint = ' ',
                        info = ' ',
                    },
                },
            },
        },
    },
}
