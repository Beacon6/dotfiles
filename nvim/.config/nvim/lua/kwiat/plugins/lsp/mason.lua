return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "html",
                "cssls",
                "tailwindcss",
                "pyright",
                "ts_ls",
            },
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
                "stylua",
                "isort",
                "black",
                "prettier",
            },
        })
    end,
}
