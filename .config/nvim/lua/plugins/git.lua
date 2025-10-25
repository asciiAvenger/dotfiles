return {
	"lewis6991/gitsigns.nvim",
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>")
	end,
}
