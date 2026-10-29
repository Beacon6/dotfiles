return {
    "Beacon6/floating-terminal.nvim",
    config = function()
        local floating_terminal = require("floating-terminal")
        floating_terminal:setup()

        vim.keymap.set({ "n", "t" }, "`", vim.cmd.FloatingTerminal)
    end
}
