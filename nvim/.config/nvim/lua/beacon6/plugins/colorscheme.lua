return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    init = function()
      require("catppuccin").setup({
        show_end_of_buffer = true,
      })

      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
