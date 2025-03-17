function SetColors(colorscheme, background_opacity)
    background_opacity = background_opacity or 100

    vim.cmd.colorscheme(colorscheme)
    vim.api.nvim_set_hl(background_opacity, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(background_opacity, "NormalFloat", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                transparent = true
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    italic = false,
                    transparency = true
                },
            })
        end,
    },
    {
        "tjdevries/colorbuddy.nvim",
    }
}
