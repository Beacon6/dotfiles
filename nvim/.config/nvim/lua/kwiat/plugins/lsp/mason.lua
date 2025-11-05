return {
    'mason-org/mason-lspconfig.nvim',
    opts = {
        ensure_installed = {
            'lua_ls',
            'pyright',
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
        {
            'WhoIsSethDaniel/mason-tool-installer.nvim',
            opts = {
                ensure_installed = {
                    'mypy',
                    'ruff',
                    'stylua',
                },
            },
        },
    },
}
