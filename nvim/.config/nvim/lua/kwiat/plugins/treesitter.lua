return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    branch = 'main',
    config = function()
        local ts = require('nvim-treesitter')
        local parsers = {
            'bash',
            'c',
            'diff',
            'html',
            'lua',
            'luadoc',
            'markdown',
            'markdown_inline',
            'query',
            'vim',
            'vimdoc',
        }
        ts.install(parsers)

        local function treesitter_try_attach(buf, language)
            if vim.treesitter.language.add(language) then
                vim.treesitter.start(buf, language)
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
        end

        local available_parsers = ts.get_available()
        vim.api.nvim_create_autocmd('FileType', {
            group = vim.api.nvim_create_augroup('TreeSitterAttach', { clear = true }),
            callback = function(args)
                local buf, filetype = args.buf, args.match
                local language = vim.treesitter.language.get_lang(filetype)
                if not language then
                    return
                end

                local installed_parsers = ts.get_installed('parsers')
                if vim.tbl_contains(installed_parsers, language) then
                    treesitter_try_attach(buf, language)
                    return
                end
                if vim.tbl_contains(available_parsers, language) then
                    ts.install(language):await(function()
                        treesitter_try_attach(buf, language)
                    end)
                end
            end,
        })
    end,
}
