--[[ nvim-lspconfig plugin provides only the default LSP server configurations
     servers have to be installed manually and enabled below (:h lspconfig-all)

     Sources:
       lua-language-server: https://github.com/LuaLS/lua-language-server
       pyright: https://github.com/microsoft/pyright
       ruff: https://github.com/astral-sh/ruff
       vtsls: https://github.com/yioneko/vtsls
  ]]

return {
    "neovim/nvim-lspconfig",
    config = function()
        local servers = { "lua_ls", "pyright", "ruff", "vtsls" }
        for _, v in ipairs(servers) do
            vim.lsp.enable(v)
        end
    end
}
