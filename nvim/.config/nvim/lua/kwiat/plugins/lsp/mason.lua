return {
    'mason-org/mason-lspconfig.nvim',
    opts = {
        ensure_installed = {
            'clangd',
            'gopls',
            'lua_ls',
            'pyright',
            'rust_analyzer',
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
        {
            'WhoIsSethDaniel/mason-tool-installer.nvim',
            opts = {
                ensure_installed = {
                    'ruff',
                    'stylua',
                },
            },
        },
    },
}
