return {
    {
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require('tokyonight').setup({
                style = 'night',
            })

            -- vim.cmd('colorscheme tokyonight')
        end,
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        priority = 1000,
        config = function()
            require('rose-pine').setup({
                variant = 'moon',
                styles = {
                    italic = false,
                    transparency = true,
                },
            })

            vim.cmd('colorscheme rose-pine')
        end,
    },
}
