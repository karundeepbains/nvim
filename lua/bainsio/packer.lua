-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        -- fuzzy finder and shows files in list
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ({ 
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- Syntax highlighting
    use("mbbill/undotree") -- undo tree
    use("github/copilot.vim") -- github copilot
    use("tpope/vim-fugitive") -- git commands in nvim
    use("nvim-treesitter/nvim-treesitter-context") -- show context of code (keeps the function name visable)
    use("christoomey/vim-tmux-navigator") -- navigate between tmux panes and vim splits

    -- sidebar filebrowser 
    use {
      'nvim-tree/nvim-tree.lua',
      requires = { 'nvim-tree/nvim-web-devicons' },
    }
    
end)
