return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        local tokyo = require('tokyonight')
        ---@diagnostic disable-next-line: missing-fields
        tokyo.setup({
            style = 'moon',
            transparent = true,
            styles = {
                keywords = { italic = false },
            },
            lualine_bold = true,
        })
        vim.cmd.colorscheme('tokyonight')
    end,
}
