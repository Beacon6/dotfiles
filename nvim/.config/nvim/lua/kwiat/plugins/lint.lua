return {
    'mfussenegger/nvim-lint',
    config = function()
        local lint = require('lint')
        lint.linters_by_ft = {
            python = { 'mypy' },
        }

        vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter' }, {
            group = vim.api.nvim_create_augroup('NvimLintAttach', { clear = true }),
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
