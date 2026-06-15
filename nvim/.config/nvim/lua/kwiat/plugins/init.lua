return {
    {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
            },
        },
    },
    {
        'christoomey/vim-tmux-navigator',
    },
    {
        'j-hui/fidget.nvim',
        opts = {},
    },
    {
        'rachartier/tiny-inline-diagnostic.nvim',
        event = 'VeryLazy',
        priority = 1000,
        opts = {
            preset = 'simple',
        },
    },
}
