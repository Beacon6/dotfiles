return {
    'stevearc/oil.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local oil = require('oil')
        oil.setup({
            columns = {
                'icon',
                'permissions',
                'size',
                'mtime',
            },
            view_options = {
                show_hidden = true,
            },
        })

        vim.keymap.set('n', '-', '<CMD>Oil<CR>')
    end,
}
