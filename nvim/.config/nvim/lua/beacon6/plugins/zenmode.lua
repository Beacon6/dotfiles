return {
  {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup {}

      vim.keymap.set('n', '<leader>tZ', function()
        require('zen-mode').toggle()
      end, { desc = '[T]oggle [Z]en mode' })
    end,
  },
}
