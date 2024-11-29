return {
    "ThePrimeagen/harpoon",
    config = function()
        local harpoon = require("harpoon")

        -- Set up Harpoon
        harpoon.setup({
            -- Configuration options here
        })

        -- Key mappings for Harpoon
        vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua require("harpoon.mark").add_file()<CR>',
            { noremap = true, silent = true, desc = "Add file to Harpoon" })
        vim.api.nvim_set_keymap('n', '<leader>m', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',
            { noremap = true, silent = true, desc = "Toggle Harpoon menu" })
        for i = 1, 9 do
            vim.api.nvim_set_keymap('n', '<leader>' .. i,
                string.format('<cmd>lua require("harpoon.ui").nav_file(%d)<CR>', i),
                { noremap = true, silent = true, desc = "Navigate to Harpoon file " .. i })
        end
    end
}
