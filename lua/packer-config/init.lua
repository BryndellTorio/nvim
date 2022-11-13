return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use({ "kylechui/nvim-surround", tag = "*"})
    use 'terrortylor/nvim-comment'
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-treesitter/nvim-treesitter'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

    use 'onsails/lspkind.nvim'
    use 'williamboman/mason.nvim'
end)
