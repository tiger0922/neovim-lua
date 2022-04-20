local options = {
  clipboard = "unnamedplus",
  fileencoding = "utf-8",
  splitbelow = true,
  splitright = true,
  showcmd = true,
  number = true,
  smartcase = true,
  smartindent = true,
  relativenumber = true,
  cursorline = true,
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,
  swapfile = false, 
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set formatoptions-=cro]]
vim.cmd([[colorscheme gruvbox]])
