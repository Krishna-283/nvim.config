vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Exit file" })

-- Visual mode line movement and paste
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Insert mode line movement
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-w>", "<C-o>w", { noremap = true, silent = true })
vim.keymap.set("i", "<C-b>", "<C-o>b", { noremap = true, silent = true })

-- Clipboard operations
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- LSP server management
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set({"n", "x"}, "<leader>cs", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Window management
vim.keymap.set("n", "<leader>cw", "<C-w>w")
vim.keymap.set("n", "<leader>cl", "<C-w>h")
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>")

-- Miscellaneous
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)
vim.keymap.set("i", "<C-c>", "<Esc>")
