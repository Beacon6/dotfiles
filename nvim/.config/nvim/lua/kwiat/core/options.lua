-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.autoindent = true

-- Wrapping
vim.opt.wrap = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearance
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.guicursor = ''
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '120'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.scrolloff = 8

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Swap file
vim.opt.swapfile = false

-- Undo file
vim.opt.undofile = true

-- Update time
vim.opt.updatetime = 250

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('HighlightYank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Confirm if unsaved changes on exit
vim.opt.confirm = true
