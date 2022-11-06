local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>nh', ':noh<CR>', opts)

map('n', '<C-J>', '<C-W><C-J>', opts)
map('n', '<C-K>', '<C-W><C-K>', opts)
map('n', '<C-L>', '<C-W><C-L>', opts)
map('n', '<C-H>', '<C-W><C-H>', opts)

map('n', '<C-]>', ':foldclose', opts)

-- Start Here!! Find a way to use space space s to resource the config file.
map('n', '<leader><leader>s', 'source C:\\Users\\bryndell.torio\\AppData\\Local\nvim\\init.lua', opts)

