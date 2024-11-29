local is_transparent = true

function ToggleTransparency()
    is_transparent = not is_transparent
    require('catppuccin').setup({
        flavour = 'mocha',
        transparent_background = is_transparent,
    })
    vim.cmd("colorscheme catppuccin")
end

vim.keymap.set('n', '<F12>', ToggleTransparency, { desc = "Toggle Transparency" })

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = 'mocha',
                transparent_background = is_transparent
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
}

