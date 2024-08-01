return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        sections = {
          lualine_b = {
            'branch',
            'diff',
            { 'diagnostics', symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' } },
          },
        },
        options = {
          component_separators = '|',
          section_separators = { left = '', right = '' },
        },
      }
    end,
  },
}
