return {
    'hrsh7th/cmp-nvim-lsp',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        { 'folke/lazydev.nvim', opts = {} },
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        vim.lsp.config('*', {
            capabilities = capabilities,
        })
    end,
}
