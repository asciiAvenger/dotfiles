return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",
	opts = {
		-- "super-tab" or "enter"
		keymap = { preset = "super-tab" },
	},
	-- for adding more completion sources later
	opts_extend = { "sources.default" },
}
