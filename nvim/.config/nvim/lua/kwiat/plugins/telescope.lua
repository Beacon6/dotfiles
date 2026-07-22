return {
    'nvim-telescope/telescope.nvim',
    version = '0.2.*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[] Open Buffers' })
        vim.keymap.set('n', '<leader>sb', builtin.current_buffer_fuzzy_find, { desc = '[S]earch [B]uffer' })
        vim.keymap.set('n', '<leader>sc', builtin.commands, { desc = '[S]earch [C]ommands' })
        vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = '[S]earch [G]it' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
        vim.keymap.set('n', '<leader>so', builtin.vim_options, { desc = '[S]earch [O]ptions' })
        vim.keymap.set('n', '<leader>ss', builtin.live_grep, { desc = '[S]earch [S]tring' })
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch [W]ord' })

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('LspConfig', { clear = true }),
            callback = function(event)
                local opts = { buffer = event.buf, silent = true }

                opts.desc = 'LSP: [G]oto [D]efinition'
                vim.keymap.set('n', 'gd', builtin.lsp_definitions, opts)

                opts.desc = 'LSP: [G]oto [R]eferences'
                vim.keymap.set('n', 'gr', builtin.lsp_references, opts)

                opts.desc = 'LSP: [D]ocument [S]ymbols'
                vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, opts)

                opts.desc = 'LSP: [W]orkspace [S]ymbols'
                vim.keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols, opts)

                opts.desc = 'LSP: [R]e[n]ame'
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

                opts.desc = 'LSP: [C]ode [A]ction'
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

                opts.desc = 'LSP: [R]estart [L]SP'
                vim.keymap.set('n', '<leader>rl', '<cmd>LspRestart<CR>', opts)
            end,
        })

        vim.api.nvim_create_autocmd('LspDetach', {
            group = vim.api.nvim_create_augroup('LspCleanup', { clear = true }),
            callback = function(event)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds({ group = 'LspConfig', buffer = event.buf })
            end,
        })
    end,
}
