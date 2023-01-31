vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use "wbthomason/packer.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"
  use "akinsho/bufferline.nvim"
  use "akinsho/toggleterm.nvim"
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

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
  use "hrsh7th/cmp-nvim-lua"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
  }

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Gruvbox
  use { "ellisonleao/gruvbox.nvim" }
  
  -- Catppuccin
  use { "catppuccin/nvim", as = "catppuccin" }
  
  -- Rose-pine
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        require('rose-pine').setup({
            dark_variant = 'moon'
        })
        vim.cmd('colorscheme rose-pine')
    end
  })

end)
