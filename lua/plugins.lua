vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim' -- Nightfox Theme
  use 'neovim/nvim-lspconfig' -- Configurations for nvim LSP
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
  use 'preservim/nerdtree'
  use 'tpope/vim-abolish'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'wellle/targets.vim'
  use 'tpope/vim-surround' 
  use 'b3nj5m1n/kommentary'
  use { "williamboman/mason.nvim" }
end)
