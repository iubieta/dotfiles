-- Mostrar numeros de linea
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Configurar tabs con 4 espacios
vim.opt.tabstop = 4        -- Número de espacios que representa un tab
vim.opt.shiftwidth = 4     -- Número de espacios utilizados para la indentación
vim.opt.expandtab = false  -- Convierte tabs en espacios (opcional, poner en false si prefieres tabs reales)
vim.opt.softtabstop = 4    -- Controla la inserción de tabs al presionar Tab
vim.opt.autoindent = true  -- Copia el indentado de la línea previa
vim.opt.smartindent = true -- Añade indentado automático en estructuras de código

-- Dejar lineas por encima y debajo del cursor
vim.opt.scrolloff = 10

-- No recortar lineas
vim.opt.wrap = false
vim.opt.sidescroll = 1
vim.opt.sidescrolloff = 5

