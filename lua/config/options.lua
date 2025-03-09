local options = {
  --global
  backup            = false,
  writebackup       = false,
  swapfile          = true,
  clipboard         = "unnamedplus",
  fileencoding      = "utf-8",
  pumheight         = 17,

  --other
  signcolumn        = "yes",
  wrap              = false,

  --gui
  cmdheight         = 1,
  termguicolors     = true,
  relativenumber    = true,
  number            = true,

  --tabs
  expandtab         = true,
  shiftwidth        = 4,
  tabstop           = 4,
  smartindent       = true,
  showtabline       = 2,

  --search
  ignorecase        = true,
  hlsearch          = true,
  smartcase         = true,

  --completion
  updatetime = 300,
  completeopt = {
    "menuone",
    "noselect",
  },

  --cursor
  cursorline        = true,
  mouse             = "a",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
