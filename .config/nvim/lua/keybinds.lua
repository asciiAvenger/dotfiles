-- map the leader to space
vim.g.mapleader = " "

-- neotree bindings
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>")

-- navigating panes easier than ctrl w and hjkl
--vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
--vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
--vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
--vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
