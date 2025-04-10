return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
            },
        })
        vim.keymap.set("n", "<leader>f", function()
            print("INFO: Buffer Formatted")
            conform.format({ lsp_fallback = true, async = true, timeout_ms = 1000 })
        end, { desc = "[F]ormat Buffer" })
    end,
}
