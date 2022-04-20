local keymap = vim.api.nvim_set_keymap

-- map the leader key
vim.g.mapleader = ','

local opts = { noremap = true, silent = true }

-- Normal --
-- Better window navigation --
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Insert --
-- Press jk as Esc --
keymap('i', 'jk', '<esc>', opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)

-- Nvimtree
keymap("n", "<leader>ne", ":NvimTreeToggle<cr>", opts)
