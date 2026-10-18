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

        vim.keymap.set("n", "-", vim.cmd.Oil)
    end
}
