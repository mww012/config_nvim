vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim' -- Nightfox Theme
  use 'neovim/nvim-lspconfig' -- Configurations for nvim LSP
  require 'lspconfig'.pyright.setup{}
  use {
    'neoclide/coc.nvim', branch = 'release' -- Code completion engine
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- use 'preservim/nerdtree'
  use 'tpope/vim-abolish'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'wellle/targets.vim'
  use 'tpope/vim-surround' 
  use 'b3nj5m1n/kommentary'
  use 'williamboman/mason.nvim'
  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  } 
end)
