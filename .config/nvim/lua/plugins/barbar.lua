return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		local barbar = require("barbar")

		barbar.setup({
			insert_at_start = true,
		})

		vim.keymap.set("n", "<A-h>", ":BufferPrevious<CR>")
		vim.keymap.set("n", "<A-l>", ":BufferNext<CR>")
		vim.keymap.set("n", "<A-H>", ":BufferMovePrevious<CR>")
		vim.keymap.set("n", "<A-L>", ":BufferMoveNext<CR>")
		vim.keymap.set("n", "<A-p>", ":BufferPick<CR>")
		vim.keymap.set("n", "<A-c>", ":BufferClose<CR>")

		vim.keymap.set("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>")
		vim.keymap.set("n", "<leader>bd", ":BufferOrderByDirectory<CR>")
		vim.keymap.set("n", "<leader>bl", ":BufferOrderByLanguage<CR>")
	end,
	version = "^1.0.0",
}
