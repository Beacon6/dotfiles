return {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
            ensure_installed = {
                'bash',
                'c',
                'diff',
                'html',
                'htmldjango',
                'css',
                'lua',
                'luadoc',
                'markdown',
                'markdown_inline',
                'query',
                'vim',
                'vimdoc',
                'python',
                'javascript',
                'typescript',
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<C-space>',
                    node_incremental = '<C-space>',
                    scope_incremental = false,
                    node_decremental = '<bs>',
                },
            },
        })
    end,
}
