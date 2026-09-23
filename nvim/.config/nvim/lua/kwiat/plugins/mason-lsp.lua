return {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
        { 'mason-org/mason.nvim', opts = {} },
        'neovim/nvim-lspconfig',
    },
    event = 'VeryLazy',
    opts = {
        ensure_installed = {
            'lua_ls',
            'pyright',
            'ruff',
            'stylua',
            'vtsls',
        },
    },
}
