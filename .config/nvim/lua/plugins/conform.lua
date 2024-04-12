return {
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "goimports", "gofumpt" },
					json = { "prettier" },
					yaml = { "prettier" },
					markdown = { "prettier" },
					html = { "prettier" },
					css = { "prettier" },
					javascript = { "prettier" },
				},
				format_on_save = {
					lsp_fallback = true,
					timeout_ms = 500,
				},
			})

			vim.keymap.set("n", "<leader>af", function()
				conform.format({
					lsp_fallback = true,
					timeout_ms = 500,
				})
			end, { desc = "Format whole file" })
		end,
	},
	{
		"LittleEndianRoot/mason-conform",
		config = function()
			require("mason-conform").setup({
				automatic_installation = false,
				ensure_installed = {
					"stylua",
					"prettier",
					"gofumpt",
					"goimports",
				},
			})
		end,
	},
}
