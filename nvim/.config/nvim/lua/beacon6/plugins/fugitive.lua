return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git [S]tatus" })
        vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiffsplit, { desc = "Git [D]iff" })
    end,
}
