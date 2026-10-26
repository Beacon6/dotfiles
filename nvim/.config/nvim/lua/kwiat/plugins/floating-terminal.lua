return {
    "Beacon6/floating-terminal.nvim",
    config = function()
        require("floating-terminal")

        vim.keymap.set({ "n", "t" }, "`", vim.cmd.FloatingTerminal)
    end
}
