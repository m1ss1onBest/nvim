local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- nvimtree
keymap("", "<M-e>", ":NvimTreeToggle<CR>", opts)

-- better window mavigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- autoindent navigation
-- TODO: remove this later
--keymap("i", "<Tab>", 'pumvisible() ? "<C-n>" : "<Tab>"', opts )
--keymap("i", "<S-Tab>", 'pumvisible() ? "<C-p>" : "<S-Tab>"', opts)
--keymap("i", "<M-n>", 'pumvisible() ? "<C-n>" : "<M-n>"', { noremap = true, silent = true, expr = true })
--keymap("i", "<M-p>", 'pumvisible() ? "<C-p>" : "<M-p>"', { noremap = true, silent = true, expr = true })

keymap("i", "<M-j>", 'pumvisible() ? "<C-n>" : "<M-n>"', { noremap = true, silent = true, expr = true })
keymap("i", "<M-k>", 'pumvisible() ? "<C-p>" : "<M-p>"', { noremap = true, silent = true, expr = true })

--keymap('i', '<M-h>', "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true })
--keymap('i', '<M-l>', "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true })


-- clipboard
if vim.fn.has('clipboard') == 1 then
    keymap("", "<C-c>", '"+y', opts)
    keymap("", "<C-v>", '"+p', opts)
else
    vim.api.nvim_err_white("Error: Clipboard support is not available")
end
