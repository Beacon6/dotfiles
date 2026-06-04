return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local tokyo = require('tokyonight')
            ---@diagnostic disable-next-line: missing-fields
            tokyo.setup({
                style = 'moon',
                transparent = true,
                lualine_bold = true,
            })
            -- vim.cmd.colorscheme('tokyonight')
        end,
    },
    {
        'rose-pine/neovim',
        lazy = false,
        priority = 1000,
        name = 'rose-pine',
        config = function()
            local rose = require('rose-pine')
            rose.setup({
                variant = 'moon',
                styles = {
                    italic = false,
                    transparency = true,
                },
            })
            vim.cmd.colorscheme('rose-pine')
        end,
    },
}
