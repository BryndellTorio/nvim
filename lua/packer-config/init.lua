return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'
    use({ "kylechui/nvim-surround", tag = "*"})
    use 'terrortylor/nvim-comment'
    use 'ellisonleao/gruvbox.nvim'


    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use 'onsails/lspkind.nvim'
end)
