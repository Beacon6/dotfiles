return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      require('catppuccin').setup {
        no_italic = true,
        show_end_of_buffer = true,
      }

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
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

      -- vim.cmd.colorscheme 'rose-pine-main'
    end,
  },
}
