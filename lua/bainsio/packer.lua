-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		-- fuzzy finder and shows files in list
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }) -- Syntax highlighting
	use("mbbill/undotree") -- undo tree
	use("github/copilot.vim") -- github copilot
	use("tpope/vim-fugitive") -- git commands in nvim
	use("nvim-treesitter/nvim-treesitter-context") -- show context of code (keeps the function name visable)

	use("christoomey/vim-tmux-navigator") -- navigate between tmux panes and vim splits

	-- sidebar filebrowser
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- custom statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- popup text entry box
	use("stevearc/dressing.nvim")

	-- LSP Support
	use("neovim/nvim-lspconfig")
	use({
		"williamboman/mason.nvim",
		run = ":MasonUpdate", -- recommended
	})
	use("williamboman/mason-lspconfig.nvim")
	use("WhoIsSethDaniel/mason-tool-installer.nvim")

	-- Completion plugins
	use("hrsh7th/nvim-cmp") -- Completion engine
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippet engine (required by nvim-cmp)
	use("saadparwaiz1/cmp_luasnip") -- Snippet completions

	-- For linting & formatting
	use("stevearc/conform.nvim")
end)
