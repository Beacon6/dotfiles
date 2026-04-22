return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    event = { 'BufReadPre', 'BufNewFile' },
    config = true,
}
