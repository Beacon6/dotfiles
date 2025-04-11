return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "macchiato",
            show_end_of_buffer = true,
            no_italic = true,
            custom_highlights = {
                CursorLineNr = { fg = "#f8fe7a" },
            },
        })
        vim.cmd("colorscheme catppuccin")
    end,
}
