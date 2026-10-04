return {
    'nvim-telescope/telescope.nvim',
    version = '0.2.*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')
        local themes = require('telescope.themes')
        telescope.setup({
            extensions = {
                ['ui-select'] = { themes.get_dropdown() },
            },
        })
        telescope.load_extension('ui-select')
        telescope.load_extension('fzf')

        vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[F]ind open buffers' })
        vim.keymap.set('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find(themes.get_dropdown({ previewer = false }))
        end, { desc = '[F]ind in current buffer' })
        vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = '[F]ind [C]ommands' })
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
        vim.keymap.set('n', '<leader>fG', builtin.git_files, { desc = '[F]ind [G]it files' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
        vim.keymap.set('n', '<leader>fo', builtin.vim_options, { desc = '[F]ind [O]ptions' })
        vim.keymap.set('n', '<leader>ft', builtin.builtin, { desc = '[F]ind [T]elescope picker' })
        vim.keymap.set({ 'n', 'v' }, '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('TelescopeLspAttach', { clear = true }),
            callback = function(event)
                local function map(keys, func, desc)
                    vim.keymap.set('n', keys, func, {
                        buffer = event.buf,
                        desc = 'LSP: ' .. desc,
                    })
                end

                map('gd', builtin.lsp_definitions, '[G]oto [D]efinition')
                map('grd', builtin.lsp_definitions, '[G]oto [D]efinition')
                map('gri', builtin.lsp_implementations, '[G]oto [I]mplementation')
                map('grr', builtin.lsp_references, '[G]oto [R]eferences')
                map('grt', builtin.lsp_type_definitions, '[G]oto [T]ype definition')
            end,
        })
    end,
}
