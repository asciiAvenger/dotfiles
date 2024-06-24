return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night",
			-- transparent = true,
			transparent = false,
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
