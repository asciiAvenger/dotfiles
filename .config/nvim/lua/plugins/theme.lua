return {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    opts = {
        terminal = true
    },
    config = function()
        vim.opt.background = "dark"
        vim.cmd.colorscheme("ayu")
    end,
}
