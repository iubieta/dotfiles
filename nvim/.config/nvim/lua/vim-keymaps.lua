-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Escape
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '<Esc>', { noremap = true, silent = true })

-- Movimiento
vim.api.nvim_set_keymap('n', 'J', '15j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '15k<CR>', { noremap = true, silent = true })

-- Movimiento en modo insercion con ctrl
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

-- Deshacer
vim.api.nvim_set_keymap('i', '<C-z>', '<C-o>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-z>', 'u', { noremap = true, silent = true })

-- Guardar archivo
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ':w<CR>', { desc = "Guardar" })
vim.keymap.set("n", "<leader>wa", ':wa<CR>', { desc = "Guardar todo" })

-- Cerrar archivo
vim.keymap.set("n", "<leader>q", ':q<CR>', { desc = "Cerrar" })
vim.keymap.set("n", "<leader>qa", ':qa<CR>', { desc = "Cerrar todo" })

-- Guardar y cerrar todo
vim.keymap.set("n", "<leader>wq", ':wqa<CR>', { desc = "Guardar y cerrar todo" })
-- Cerrar todo
vim.keymap.set("n", "<leader>qa", ':qa!<CR>', { desc = "Cerrar todo" })

-- split
vim.keymap.set("n", "<leader>s", ':split<CR>', { desc = "Cerrar todo" })
vim.keymap.set("n", "<leader>vs", ':vertical split<CR>', { desc = "Cerrar todo" })

-- Abrir terminal
vim.keymap.set("n", "<leader>ot", ':terminal<CR>', { desc = "Abrir terminal"})

-- Navegar entre ventanas
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Gestion de pestañas
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Abrir nueva pestaña" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Cerrar pestaña actual" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Ir a la siguiente pestaña" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Ir a la pestaña anterior" })
vim.keymap.set("n", "<leader>t1", "1gt", { desc = "Ir a la pestaña 1" })
vim.keymap.set("n", "<leader>t2", "2gt", { desc = "Ir a la pestaña 2" })
vim.keymap.set("n", "<leader>t3", "3gt", { desc = "Ir a la pestaña 3" })
vim.keymap.set("n", "<leader>t4", "4gt", { desc = "Ir a la pestaña 4" })
vim.keymap.set("n", "<leader>t5", "5gt", { desc = "Ir a la pestaña 5" })

