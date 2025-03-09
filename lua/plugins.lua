return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3fc5ff ]])
      nvimtree.setup({
	view = {
	  width = 20,
	  side = "right",
	},
      })
    end
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      require("todo-comments").setup {
	signs = true,
	highlights = {
	  before = "bg",
	}
      }
    end
  },

  {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      local cmp = require("cmp")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("lspconfig").rust_analyzer.setup({
	capabilities = capabilities,
	settings = {
	  ["rust-analyzer"] = {
	    cargo = {
	      allFeatures = true,
	    },
	    procMacro = {
	      enable = true,
	    },
	  },
	},
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").rust_analyzer.setup({
	settings = {
	  ["rust-analyzer"] = {
	    cargo = {
	      allFeatures = true,
	    },
	    procMacro = {
	      enable = true,
	    },
	  },
	},
      })
    end
  },
}
