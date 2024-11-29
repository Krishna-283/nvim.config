return {
    {
        "laytan/cloak.nvim",
        opts = {},
        config = function()
            require('cloak').setup {
                vim.keymap.set("n", "<leader>tc", ":cloakToggle<CR>", { noremap = true, silent = true })
            }
        end
    },
}
