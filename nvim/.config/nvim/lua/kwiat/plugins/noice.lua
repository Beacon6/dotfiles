return {
    'folke/noice.nvim',
    dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
    },
    event = 'VeryLazy',
    config = function()
        local noice = require('noice')
        local notify = require('notify')

        noice.setup({
            lsp = {
                override = {
                    ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                    ['vim.lsp.util.stylize_markdown'] = true,
                    ['cmp.entry.get_documentation'] = true,
                },
            },
            presets = {
                lsp_doc_border = true,
            },
        })
        ---@diagnostic disable-next-line: missing-fields
        notify.setup({
            background_colour = '#000000',
        })
    end,
}
