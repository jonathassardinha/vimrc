vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require('rose-pine').setup({
				dark_variant = 'main'
			})
			vim.cmd('colorscheme rose-pine')
		end
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use 'nvim-tree/nvim-web-devicons'
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}

    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
    use "folke/neodev.nvim"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'rmagatti/session-lens',
        requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production',
        ft = {'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'} }
    end)
