-- referonce: https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
-- NOTE: Still based on the guide from youtube. Link in the main init.lua file
local luasnip = require 'luasnip'
local cmp = require 'cmp'
local lspkind = require('lspkind')

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        -- ['<Tab>'] = cmp.mapping(function(fallback)
        --     if cmp.visible() then
        --         cmp.select_next_item()
        --     elseif luasnip.expand_or_jumpable() then
        --         luasnip.expand_or_jump()
        --     else
        --         fallback()
        --     end
        -- end, { 'i', 's' }),
        -- ['<S-Tab>'] = cmp.mapping(function(fallback)
        --     if cmp.visible() then
        --         cmp.select_prev_item()
        --     elseif luasnip.jumpable(-1) then
        --         luasnip.jump(-1)
        --     else
        --         fallback()
        --     end
        -- end, { 'i', 's' }),
    }),

    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer', keywork_length = 5 },
    },

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
            }
        }
    },

    ghost_text = true,

    -- Lspkind configurations based on option 1. Reference: https://github.com/onsails/lspkind.nvim
    mode = 'symbol_text',
    preset = 'codicons',
    symbol_map = {
        Text = "",
        Method = "",
        Function = "",
        Constructor = "",
        Field = "ﰠ",
        Variable = "",
        Class = "ﴯ",
        Interface = "",
        Module = "",
        Property = "ﰠ",
        Unit = "塞",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "פּ",
        Event = "",
        Operator = "",
        TypeParameter = ""
    },
}

-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})
-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
            { name = 'cmdline' }
        })
})
