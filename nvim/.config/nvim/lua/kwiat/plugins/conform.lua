return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        local conform = require('conform')

        conform.setup({
            formatters_by_ft = {
                lua = { 'stylua' },
            },
        })
        vim.keymap.set('n', '<leader>f', function()
            conform.format({ lsp_fallback = true, async = true, timeout_ms = 1000 })
        end, { desc = 'Format Buffer' })
    end,
}
