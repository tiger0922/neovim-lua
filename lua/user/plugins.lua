vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use "wbthomason/packer.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"
  use "akinsho/bufferline.nvim"

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Nvim-tree
  use "kyazdani42/nvim-tree.lua"

  -- Lualine
  use "nvim-lualine/lualine.nvim"

  -- Cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
  }

  -- Gruvbox
  use { "ellisonleao/gruvbox.nvim" }

end)
