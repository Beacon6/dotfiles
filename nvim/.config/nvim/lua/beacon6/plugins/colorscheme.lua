return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        init = function()
            require("tokyonight").setup({
                style = "night",
                styles = {
                    functions = {},
                },
                on_colors = function() end,
                on_highlights = function() end,
            })

            vim.cmd.colorscheme("tokyonight")
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        init = function()
            require("rose-pine").setup({
                styles = {
                    italic = false,
                },
            })
        end,
    },
}
