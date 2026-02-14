-- Configurar xclip como backend del portapapeles
vim.g.clipboard = {
  name = "xclip",
  copy = {
    ["+"] = "xclip -selection clipboard",
    ["*"] = "xclip -selection primary",
  },
  paste = {
    ["+"] = "xclip -selection clipboard -o",
    ["*"] = "xclip -selection primary -o",
  },
  cache_enabled = 0,
}

-- Keymaps para copiar y pegar
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copiar al portapapeles" })
vim.keymap.set("v", "<leader>x", '"+d', { desc = "Cortar al portapapeles" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Pegar desde portapapeles" })

vim.keymap.set('v', '<C-S-c>', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', '<C-S-x>', '"+d', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-v>', '"+p', { noremap = true, silent = true })

