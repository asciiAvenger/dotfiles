return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "vim", "bash", "markdown", "regex", "toml", "xml", "yaml" },
			sync_install = false,
			auto_install = true,
		})
	end,
}
