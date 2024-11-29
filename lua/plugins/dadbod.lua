return {
    "tpope/vim-dadbod",
    "kristijanhusak/vim-dadbod-completion",
    "kristijanhusak/vim-dadbod-ui",

    vim.keymap.set("n", "<leader>td", ":DBUI<CR>", { noremap = true, silent = true })
}
