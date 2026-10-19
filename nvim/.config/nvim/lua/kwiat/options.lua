-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearance
vim.opt.showmode = false
vim.opt.guicursor = ""
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·" }
vim.opt.scrolloff = 8
vim.opt.winborder = "rounded"

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Undo file
vim.opt.undofile = true

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Diagnostics
vim.diagnostic.config({
    severity_sort = true,
    virtual_text = true,
    jump = {
        on_jump = function(_, bufnr)
            vim.diagnostic.open_float({
                bufnr = bufnr,
                scope = "cursor",
                focus = false,
            })
        end,
    },
})
