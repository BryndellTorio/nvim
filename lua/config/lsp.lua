return {
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "pyright",
                "clangd",
                "arduino_language_server",
                "sumneko_lua",
                "marksman",
                "tsserver",
                "html",
                "cssls",
                "cmakelang",
                "cmakelint",
                "neocmakelsp",
            })
        end,
    },
}
