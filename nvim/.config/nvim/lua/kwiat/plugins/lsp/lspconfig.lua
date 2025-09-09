return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'williamboman/mason-lspconfig.nvim',
        { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
        local lspconfig = require('lspconfig')
        local mason_lspconfig = require('mason-lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')
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

        vim.diagnostic.config({
            severity_sort = true,
            float = { border = 'rounded', source = 'if_many' },
            underline = { severity = vim.diagnostic.severity.ERROR },
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = '󰅚 ',
                    [vim.diagnostic.severity.WARN] = '󰀪 ',
                    [vim.diagnostic.severity.INFO] = '󰋽 ',
                    [vim.diagnostic.severity.HINT] = '󰌶 ',
                },
            },
            virtual_text = {
                source = 'if_many',
                spacing = 2,
                format = function(diagnostic)
                    local diagnostic_message = {
                        [vim.diagnostic.severity.ERROR] = diagnostic.message,
                        [vim.diagnostic.severity.WARN] = diagnostic.message,
                        [vim.diagnostic.severity.INFO] = diagnostic.message,
                        [vim.diagnostic.severity.HINT] = diagnostic.message,
                    }
                    return diagnostic_message[diagnostic.severity]
                end,
            },
        })

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend('force', capabilities, cmp_nvim_lsp.default_capabilities())

        mason_lspconfig.setup_handlers({
            function(server)
                lspconfig[server].setup({
                    capabilities = capabilities,
                })
            end,
            ['pyright'] = function()
                lspconfig['pyright'].setup({
                    capabilities = capabilities,
                    settings = {
                        pyright = {
                            disableOrganizeImports = true,
                        },
                        python = {
                            analysis = {
                                typeCheckingMode = 'off',
                                exclude = {
                                    '**/node_modules',
                                    '**/__pycache__',
                                    '**/.*',
                                    '**/media',
                                    '**/data-backup',
                                    '**/data-restore',
                                },
                            },
                        },
                    },
                })
            end,
            ['lua_ls'] = function()
                lspconfig['lua_ls'].setup({
                    capabilities = capabilities,
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { 'vim' },
                            },
                        },
                    },
                })
            end,
        })
    end,
}
