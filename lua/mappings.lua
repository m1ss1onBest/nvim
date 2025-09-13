require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

local opts = { noremap = true, silent = true }

map("", "<M-e>", ":NvimTreeToggle<CR>", { desc = "toggle NvimTree"})
map("n", ";", ":", { desc = "CMD enter command mode" })
--map("i", "jk", "<ESC>")
--
map("i", "<M-k>", function() require'cmp'.select_prev_item() end, { desc = "Previous completion item" })
map("i", "<M-j>", function() require'cmp'.select_next_item() end, { desc = "Next completion item" })

map("", "<C-c>", '"+y', opts)
map("", "<C-v>", '"+p', opts)

map("", "<C-j>", "<C-d>", opts)
map("", "<C-k>", "<C-u>", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
