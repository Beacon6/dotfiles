return {
    {
        "nvim-mini/mini.statusline",
        config = function()
            local statusline = require("mini.statusline")
            statusline.setup()
        end
    },
    {
        "nvim-mini/mini.statuscolumn",
        config = function()
            local statuscolumn = require("mini.statuscolumn")
            statuscolumn.setup()
        end
    },
    {
        "nvim-mini/mini.hues",
        config = function()
            vim.cmd.colorscheme("minischeme")
        end
    }
}
