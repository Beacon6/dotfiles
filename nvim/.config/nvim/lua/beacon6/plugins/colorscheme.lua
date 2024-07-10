return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    init = function()
      require('rose-pine').setup {
        styles = {
          italic = false,
        },
      }

      vim.cmd.colorscheme 'rose-pine-main'
    end,
  },
}
