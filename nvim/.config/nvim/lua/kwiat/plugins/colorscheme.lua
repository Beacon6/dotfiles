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
            integrations = {
                indent_blankline = {
                    enabled = true,
                    scope_color = 'blue',
                    colored_indent_levels = false,
                },
            },
        })

        vim.cmd.colorscheme('catppuccin')
    end,
}
