return {
    'mason-org/mason-lspconfig.nvim',
    opts = {
        ensure_installed = {
            'clangd',
            'lua_ls',
            'pyright',
            'ruff',
            'stylua',
            'tailwindcss',
            'ts_ls',
        },
    },
    dependencies = {
        {
            'mason-org/mason.nvim',
            opts = {
                ui = {
                    icons = {
                        package_installed = '✓',
                        package_pending = '➜',
                        package_uninstalled = '✗',
                    },
                },
            },
        },
        { 'neovim/nvim-lspconfig' },
        { 'j-hui/fidget.nvim', opts = {} },
    },
}
