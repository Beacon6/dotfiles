return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            { 'nvim-telescope/telescope-ui-select.nvim' },
            { 'nvim-tree/nvim-web-devicons' },
        },
        config = function()
            require('telescope').setup({
                defaults = {
                    path_display = { 'smart' },
                },
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown(),
                    },
                },
            })
            require('telescope').load_extension('fzf')
            require('telescope').load_extension('ui-select')

            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Search files' })
            vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search by grep' })
            vim.keymap.set('n', '<leader>sb', builtin.current_buffer_fuzzy_find, { desc = 'Search buffer' })
            vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search word' })
            vim.keymap.set('n', '<leader>sc', builtin.commands, { desc = 'Search commands' })
            vim.keymap.set('n', '<leader>so', builtin.vim_options, { desc = 'Search options' })
            vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help' })
            vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search keymaps' })
        end,
    },
}
