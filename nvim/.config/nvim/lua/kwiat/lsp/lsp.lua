local builtin = require('telescope.builtin')
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

local severity = vim.diagnostic.severity
vim.diagnostic.config({
    severity_sort = true,
    signs = {
        text = {
            [severity.ERROR] = '󰅚 ',
            [severity.WARN] = '󰀪 ',
            [severity.INFO] = '󰋽 ',
            [severity.HINT] = '󰌶 ',
        },
    },
    virtual_text = {
        source = 'if_many',
        spacing = 4,
        prefix = '●',
    },
})
