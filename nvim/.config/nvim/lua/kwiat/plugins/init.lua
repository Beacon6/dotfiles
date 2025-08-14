return {
    'nvim-lua/plenary.nvim',
    'christoomey/vim-tmux-navigator',
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },
    { 'echasnovski/mini.indentscope', version = false, opts = {} },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        event = { 'BufReadPre', 'BufNewFile' },
        opts = {
            scope = { enabled = false },
            debounce = 100,
            indent = { char = '╎' },
        },
    },
}
