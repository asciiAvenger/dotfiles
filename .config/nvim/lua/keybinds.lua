-- map the leader to space
vim.g.mapleader = " "

-- neotree bindings
vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle<CR>")

-- open netrw
vim.keymap.set("n", "<leader>m", ":Ex<CR>")

-- navigating panes easier than ctrl w and hjkl
--vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
--vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
--vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
--vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- quickfix list bindings
vim.keymap.set("n", "<leader>qo", ":copen<CR>")
vim.keymap.set("n", "<leader>qq", ":cclose<CR>")
vim.keymap.set("n", "<leader>qn", ":cnext<CR>")
vim.keymap.set("n", "<leader>qp", ":cprev<CR>")
vim.keymap.set("n", "<leader>qf", ":cfirst<CR>")
vim.keymap.set("n", "<leader>ql", ":clast<CR>")
