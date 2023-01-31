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
  tabstop = 4,
  shiftwidth = 4,
  swapfile = false,
  hidden = true,
  mouse = "a",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
-- vim.cmd [[colorscheme gruvbox]]
vim.cmd [[colorscheme catppuccin-macchiato]]
-- vim.cmd [[colorscheme rose-pine]]

-- Set indentation based on filetype
vim.cmd [[
  autocmd FileType html setlocal ts=2 sts=2 sw=2
  autocmd FileType css setlocal ts=2 sts=2 sw=2
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2
  autocmd FileType typescript setlocal ts=2 sts=2 sw=2
  autocmd FileType javascriptreact setlocal ts=2 sts=2 sw=2
  autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2
  autocmd FileType lua setlocal ts=2 sts=2 sw=2
]]
