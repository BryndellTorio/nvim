-- NOT YET WORKING!!!!! <<-----------------
-- creating snippets 
local ls = require "luasnip"

ls.snippets = {
    all = {
        ls.parser.parse_snippet("test", "--this is what was expanded"),
    },
    lua = {

    },
}
