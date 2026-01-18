return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'ruff_format' },
            javascript = { 'prettierd', 'prettier' },
            typescript = { 'prettierd', 'prettier' },
            json = { 'prettierd', 'prettier' },
            html = { 'prettierd', 'prettier' },
        },
    },
    keys = {
        {
            '<leader>cf',
            function()
                local conform = require('conform')
                conform.format({ async = true, lsp_format = 'fallback', timeout_ms = 500 }, function(err)
                    if not err then
                        local path = vim.fn.expand('%')
                        vim.notify(string.format('"%s" formatted', path), vim.log.levels.INFO)
                    end
                end)
            end,
            desc = '[C]ode [F]ormat',
        },
    },
}
