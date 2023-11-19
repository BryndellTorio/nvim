return {
    -- lualine
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                theme = "gruvbox-material",
            },
        },
    },
    -- logo
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        opts = function(_, opts)
            local logo = [[
  ▓█████▄ ▓█████  ██▓    
  ▒██▀ ██▌▓█   ▀ ▓██▒    
  ░██   █▌▒███   ▒██░    
  ░▓█▄   ▌▒▓█  ▄ ▒██░    
  ░▒████▓ ░▒████▒░██████▒
  ▒▒▓  ▒ ░░ ▒░ ░░ ▒░▓  ░
  ░ ▒  ▒  ░ ░  ░░ ░ ▒  ░
  ░ ░  ░    ░     ░ ░   
    ░       ░  ░    ░  ░
  ░
    ]]
            logo = string.rep("\n", 4) .. logo .. "\n"
            opts.config.header = vim.split(logo, "\n")
        end,
    },
}
