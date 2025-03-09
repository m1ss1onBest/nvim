return {
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
}
