return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            group = vim.api.nvim_create_augroup("TreesitterAttach", { clear = true }),
            callback = function(args)
                local file_type = args.match
                local language = vim.treesitter.language.get_lang(file_type)
                if language and vim.treesitter.language.add(language) then
                    vim.treesitter.start()
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end,
}
