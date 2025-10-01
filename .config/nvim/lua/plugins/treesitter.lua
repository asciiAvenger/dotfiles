return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "bash", "bibtex", "dockerfile", "gitignore", "go", "gomod", "gosum", "gotmpl", "helm", "ini", "json", "latex", "lua", "markdown", "nginx", "regex", "sql", "toml", "vim", "xml", "yaml" },
        indent = {
            enable = true
        },
        highlight = {
            enable = true
        }
    }
}
