return {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        local lint = require('lint')
        lint.linters_by_ft = {
            python = { 'mypy' },
        }

        vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost' }, {
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
