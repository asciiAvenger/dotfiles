-- map the leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- quickfix list bindings
vim.keymap.set("n", "<leader>qo", ":copen<CR>")
vim.keymap.set("n", "<leader>qq", ":cclose<CR>")
vim.keymap.set("n", "<leader>qn", ":cnext<CR>")
vim.keymap.set("n", "<leader>qp", ":cprev<CR>")
vim.keymap.set("n", "<leader>qf", ":cfirst<CR>")
vim.keymap.set("n", "<leader>ql", ":clast<CR>")
