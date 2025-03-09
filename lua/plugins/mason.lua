return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                PATH = "prepend",
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            {
                "neovim/nvim-lspconfig",
                lazy = false,
                dependencies = {
                    {
                        "ms-jpq/coq_nvim",
                        branch = "coq"
                    },
                    {
                        "ms-jpq/coq.artifacts",
                        branch = "artifacts"
                    },
                    {
                        "ms-jpq/coq.thirdparty",
                        branch = "3p"
                    }
                }
            }
        },

        init = function()
            vim.g.coq_settings = {
                auto_start = "shut-up",
            }
        end,

        config = function() 
            local mason_lspconfig = require("mason-lspconfig")

            servers = {
                "clangd",
                "rust_analyzer",
                "pyright",
                "lua_ls",
            }

            mason_lspconfig.setup({
                ensure_installed = servers
            })

            local lspconfig = require("lspconfig")
            local coq = require("coq")

            for _, server in ipairs(servers) do
                lspconfig[server].setup(coq.lsp_ensure_capabilities({}))
            end
        end
    }
}
