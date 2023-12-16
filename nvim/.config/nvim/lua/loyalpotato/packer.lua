-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope & extensions/plugins
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }

    -- NOTE: If this is run in another environment it might use a different tool to build (cmake for example)
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    -- file icons
    use { 'nvim-tree/nvim-web-devicons' }

    -- syntax highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- colorscheme
    use { 'rebelot/kanagawa.nvim' }

    -- file navigation/management
    use { 'theprimeagen/harpoon' }

    use { 'mbbill/undotree' }

    -- git helper
    use { 'tpope/vim-fugitive' }

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },

            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'rafamadriz/friendly-snippets' },

            -- winbar - top status line
            { 'SmiteshP/nvim-navic' },

            { 'L3MON4D3/LuaSnip' },
        }
    }

    use { 'WhoIsSethDaniel/mason-tool-installer.nvim' } -- To auto install any tool of mason

    -- bottom status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use { "windwp/nvim-autopairs" }

    use {
        'numToStr/Comment.nvim',
    }

    -- used to add support easily comment for tsx/jsx
    use {
        'JoosepAlviste/nvim-ts-context-commentstring',
        requires = {
            { 'nvim-treesitter/nvim-treesitter' }
        }
    }

    use { 'lewis6991/gitsigns.nvim' }

    use { 'rcarriga/nvim-notify' }

    use {
        "folke/noice.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }

    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    use {
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    }

    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
    }

    use { 'christoomey/vim-tmux-navigator' }
end)
