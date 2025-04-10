return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy",
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function()
                harpoon:list():add()
            end, { desc = "[A]dd to Harpoon" })

            vim.keymap.set("n", "<leader>`", function()
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end, { desc = "Toggle Harpoon menu" })

            vim.keymap.set("n", "<leader>q", function()
                harpoon:list():prev()
            end, { desc = "Previous file" })

            vim.keymap.set("n", "<leader>e", function()
                harpoon:list():next()
            end, { desc = "Next file" })

            for i = 1, 5 do
                local key = string.format("<leader>%s", i)
                local desc = string.format("Go to file [%s]", i)

                vim.keymap.set("n", key, function()
                    harpoon:list():select(i)
                end, { desc = desc })
            end
        end,
    },
}
