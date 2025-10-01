return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },

    -- LSP setup
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "stylua",
                "bashls",
                "helm_ls",
                "jsonls",
                "yamlls",
                "gopls",
            },
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()

        end
    },

    -- formatting
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "goimports", "gofumpt" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                javascript = { "prettier" },
            }
        },
        config = function()
            vim.keymap.set("n", "<leader>af", function()
                require("conform").format()
            end, { desc = "Format whole file" })
        end,
    },
    {
        "LittleEndianRoot/mason-conform",
        opts = {
            ensure_installed = {
                "stylua",
                "prettier",
                "gofumpt",
                "goimports",
            },
        }
    },

    -- linting
    {
        "mfussenegger/nvim-lint",
        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                lua = { "luacheck" },
            }

            vim.api.nvim_create_autocmd({ "BufWritePost" }, {
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
        opts = {}
    },
}
