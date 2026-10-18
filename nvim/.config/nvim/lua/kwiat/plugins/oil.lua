return {
    "stevearc/oil.nvim",
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    config = function()
        local oil = require("oil")

        oil.setup({
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime"
            },
            view_options = {
                show_hidden = true
            }
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>")
    end
}
