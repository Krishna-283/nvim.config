return {
    "folke/trouble.nvim",
    opts = {
        use_diagnostic_signs = true,
        wrap = true
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Toggle Trouble"
        },
    }
}
