return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            local ls = require("luasnip")

            -- Load snippets
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./friendly-snippets" } })

            -- Extend filetypes
            ls.filetype_extend("javascript", { "jsdoc" })
            ls.filetype_extend("typescript", { "jsdoc", "javascript" })

            -- Keymaps
            vim.keymap.set({ "i" }, "<C-s>e", function() ls.expand() end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-s>;", function() ls.jump(1) end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-s>,", function() ls.jump(-1) end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, { silent = true })
        end,
    }
}
