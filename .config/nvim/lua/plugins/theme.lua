return {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	config = function()
		require("ayu").setup({})
		vim.cmd.colorscheme("ayu-dark")
	end,

	-- "folke/tokyonight.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	require("tokyonight").setup({
	-- 		style = "night",
	-- 		-- transparent = true,
	-- 		transparent = false,
	-- 	})
	-- 	vim.cmd.colorscheme("tokyonight")
	-- end,

	-- "catppuccin/nvim",
	-- name = "catppuccin",
	-- priority = 1000,
	-- config = function()
	-- 	require("catppuccin").setup({
	-- 		flavour = "mocha",
	-- 		transparent_background = true,
	-- 		integrations = {
	-- 			barbar = true,
	-- 		},
	-- 	})
	-- 	vim.cmd.colorscheme("catppuccin")
	-- end,
}
