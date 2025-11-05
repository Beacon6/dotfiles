vim.lsp.config('ruff', {
    init_options = {
        settings = {
            lint = {
                enable = false,
            },
        },
    },
    on_attach = function(client)
        client.server_capabilities.hoverProvider = false
    end,
})
