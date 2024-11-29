return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
        -- Keybinding for toggling comments in normal mode
        vim.api.nvim_set_keymap('n', '<leader>/', ':lua require("Comment.api").toggle.linewise.current()<CR>',
            { noremap = true, silent = true })

        -- Keybinding for toggling comments in visual mode
        vim.api.nvim_set_keymap('x', '<leader>/', ':lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
            { noremap = true, silent = true })
    end,

}
