return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        local harpoon = require('harpoon')
        harpoon:setup()

        local conf = require('telescope.config').values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require('telescope.pickers')
                .new({}, {
                    prompt_title = 'Harpoon',
                    finder = require('telescope.finders').new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                })
                :find()
        end

        vim.keymap.set('n', '<leader>a', function()
            harpoon:list():add()
        end, { desc = 'Add to harpoon' })
        vim.keymap.set('n', '<leader>h', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = 'Open harpoon window' })
        vim.keymap.set('n', '<leader>`', function()
            toggle_telescope(harpoon:list())
        end, { desc = 'Open harpoon window (Telescope)' })

        for i = 1, 5 do
            local key = string.format('<leader>%s', i)
            local desc = string.format('Go to buffer %s', i)

            vim.keymap.set('n', key, function()
                harpoon:list():select(i)
            end, { desc = desc })
        end
    end,
}
