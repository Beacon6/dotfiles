return {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'Gvdiffsplit' },
    keys = {
        { '<leader>gs', '<cmd>Git<cr>', desc = '[G]it [S]tatus' },
        { '<leader>gd', '<cmd>Gvdiffsplit<cr>', desc = '[G]it [D]iff' },
    },
}
