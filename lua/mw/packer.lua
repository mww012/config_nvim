-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use("EdenEast/nightfox.nvim") -- Nightfox  Theme
	use('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'})
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use {
        'nyngwang/NeoTerm.lua',
        config = function ()
        require('neo-term').setup {
            exclude_filetypes = { 'oil' },
            exclude_buftypes = { 'terminal' },
        }
    end
    }

    --- Debugging ---
    use 'mfussenegger/nvim-dap' -- Debugger framework
    use 'mfussenegger/nvim-dap-python' -- Python Debugger
    use 'theHamsta/nvim-dap-virtual-text' -- Debugging virt text support
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use "folke/neodev.nvim"
    ---/---

    --- UI Lines ---
    use "b0o/incline.nvim"
    ---/---
    --- Misc ---
    ---/---
end)
