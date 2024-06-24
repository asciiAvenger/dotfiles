return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				-- go = { "golangci-lint" },
				lua = { "luacheck" },
			}

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
				callback = function()
					lint.try_lint()
				end,
			})

			vim.keymap.set("n", "<leader>al", function()
				lint.try_lint()
			end, { desc = "Lint the current file" })
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		config = function()
			require("mason-nvim-lint").setup({
				automatic_installation = false,
				ensure_installed = {
					"golangci-lint",
					"luacheck",
				},
			})
		end,
	},
}
