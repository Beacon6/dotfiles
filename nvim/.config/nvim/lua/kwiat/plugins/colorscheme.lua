return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        local ctp = require('catppuccin')
        ctp.setup({
            flavour = 'macchiato',
            transparent_background = true,
            float = {
                transparent = true,
                solid = true,
            },
            show_end_of_buffer = true,
        })

        vim.cmd.colorscheme('catppuccin')
    end,
}
