return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "vim",
                "lua",
                "cpp",
                "c",
                "python",
                "rust",
            },
            sync_install = false,
            highlight = { enable = true },
            indnet = { enable = true }
        })
    end
}
