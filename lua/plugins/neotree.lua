return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- Recommended for icons
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Uncomment for optional image support in preview window
    },
    config = function()
        require('neo-tree').setup({
            window = {
                position = 'right',
                width    = 30,
            },
            filesystem = {
                filtered_items = {
                    hide_by_name = {"node_modules"}
                }
            }
        })

        -- Key mappings
        vim.api.nvim_set_keymap('n', '<leader>tn', ':Neotree toggle<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>gt', ':Neotree float git_status git_base=main<CR>',
            { noremap = true, silent = true })
    end,
}
