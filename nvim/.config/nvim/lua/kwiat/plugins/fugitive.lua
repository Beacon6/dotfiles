return {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'Gdiffsplit' },
    keys = {
        { '<leader>gs', '<cmd>Git<cr>', desc = '[G]it [S]tatus' },
        { '<leader>gd', '<cmd>Gdiffsplit<cr>', desc = '[G]it [D]iff' },
    },
}
