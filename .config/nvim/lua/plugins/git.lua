return {
    "f-person/git-blame.nvim",
    opts = {
        enabled = false
    },
    config = function()
        vim.keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>")
    end,
}
