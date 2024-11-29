return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local npairs = require("nvim-autopairs")
            local cmp = require("cmp")

            npairs.setup {}

            -- Only add this if you are using nvim-cmp and it supports autopairs integration
            if cmp then
                local cmp_autopairs = require("nvim-autopairs.completion.cmp")
                cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
            end
        end
    }
}
