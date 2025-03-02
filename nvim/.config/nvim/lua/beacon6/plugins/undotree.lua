return {
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "[U]ndotree Toggle" })
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
            vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
            vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
            vim.keymap.set("v", "<leader>y", [["+y]])
        end,
    },
}
