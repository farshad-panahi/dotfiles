vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "gf", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Split window horiz" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertic" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<leader>tx", "<cmd>Tab close<CR>", { desc = "Close current tab" })

vim.keymap.set("n", "<leader>all", "ggVG", { desc = "Select whole content of buffer" })

vim.keymap.set("i", "kk", "<Esc>", { desc = "Escape" })
