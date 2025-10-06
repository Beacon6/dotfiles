return {
    {
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
            require('tokyonight').setup({
                style = 'night',
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                },
                lualine_bold = true,
            })

            vim.cmd('colorscheme tokyonight')
        end,
    },
}
