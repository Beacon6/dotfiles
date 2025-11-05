return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'ruff_format' },
        },
        format_on_save = {
            lsp_format = 'fallback',
            timeout_ms = 500,
        },
    },
    keys = {
        {
            '<leader>bf',
            function()
                require('conform').format({ lsp_format = 'fallback', timeout_ms = 500 })
            end,
            desc = 'Format Buffer',
        },
    },
}
