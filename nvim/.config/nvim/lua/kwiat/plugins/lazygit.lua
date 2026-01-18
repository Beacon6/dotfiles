return {
    'kdheepak/lazygit.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    cmd = 'LazyGit',
    keys = {
        { '<leader>gl', '<cmd>LazyGit<cr>', desc = '[L]azyGit' },
    },
}
