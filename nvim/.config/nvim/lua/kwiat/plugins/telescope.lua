return {
    "nvim-telescope/telescope.nvim",
    version = "0.2.*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        local themes = require("telescope.themes")

        telescope.setup({
            defaults = themes.get_ivy(),
        })

        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader><leader>", function()
            builtin.current_buffer_fuzzy_find(themes.get_ivy({ previewer = false }))
        end, { desc = "[F]ind in current buffer" })
        vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "[F]ind [C]ommands" })
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
        vim.keymap.set("n", "<leader>fG", builtin.git_files, { desc = "[F]ind [G]it files" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("TelescopeLspAttach", { clear = true }),
            callback = function(args)
                local set_keymap = function(keys, func, desc)
                    vim.keymap.set("n", keys, func, {
                        buffer = args.buf,
                        desc = "LSP: " .. desc,
                    })
                end

                set_keymap("gd", builtin.lsp_definitions, "[G]oto [D]efinition")
                set_keymap("grd", builtin.lsp_definitions, "[G]oto [D]efinition")
                set_keymap("gri", builtin.lsp_implementations, "[G]oto [I]mplementation")
                set_keymap("grr", builtin.lsp_references, "[G]oto [R]eferences")
                set_keymap("grt", builtin.lsp_type_definitions, "[G]oto [T]ype definition")
            end,
        })
    end,
}
