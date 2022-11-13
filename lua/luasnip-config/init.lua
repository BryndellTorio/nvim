-- Add luasnip feature in neovim. Next addons for the custom IDE.

-- Using friendly snippets plug in
require("luasnip.loaders.from_vscode").lazy_load({})

if vim.g.snippets == "luasnip" then
    return
end

local ls = require "luasnip"
local types = require "luasnip.util.types"


ls.config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { "", "GruvboxOrange"} },
            }
        }
    }
})

-- Jump forward in the snippet
vim.keymap.set({"i", "s"}, "<C-K>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- Jump backwards in the snippet
vim.keymap.set({"i", "s"}, "<C-J>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set({"i"}, "<C-L>", function()
    if ls.choice_node() then
        ls.change_choice(1)
    end
end, { silent = true })

vim.keymap.set("n", "<leader>sn", "<cmd>source C:/Users/bryndell.torio/AppData/Local/nvim/lua/luasnip-config/init.lua<CR>")
