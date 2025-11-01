return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    config = function()
        local lualine = require('lualine')
        local lazy_status = require('lazy.status')

        lualine.setup({
            options = { component_separators = '|' },
            sections = {
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = '#f6c177' }, -- rose-pine-moon gold
                    },
                    'encoding',
                    'fileformat',
                    'filetype',
                },
            },
        })
    end,
}
