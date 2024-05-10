return {
	"f-person/git-blame.nvim",
	config = function()
		require("gitblame").setup({
			enabled = false,
		})

		-- toggle git blame messages with <leader>gb
		vim.keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>")
	end,
}
