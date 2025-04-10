return {
    {
        "mbbill/undotree",
        event = "VeryLazy",
        config = function()
            vim.keymap.set("n", "<F5>", vim.cmd.UndotreeToggle, { desc = "[U]ndotree" })
        end,
    },
}
