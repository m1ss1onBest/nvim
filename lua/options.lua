require "nvchad.options"

local options = {
  relativenumber = true,
  cursorlineopt = "both",
};

for k, v in pairs(options) do
  vim.o[k] = v
end

