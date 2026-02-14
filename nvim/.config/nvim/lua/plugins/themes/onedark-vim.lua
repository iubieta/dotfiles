-- Tema: onedark.vim (versión Vim script)
-- Tema oscuro inspirado en Atom One Dark (implementación original en Vim script)
-- INACTIVO: enabled = false

return {
	"joshdick/onedark.vim",
	lazy = false,
	priority = 1000,
	enabled = false,  -- Tema INACTIVO
	config = function()
		-- Habilitar true colors
		vim.opt.termguicolors = true
		
		-- Cargar el tema
		vim.cmd("colorscheme onedark")
		
		-- Personalizaciones de colores
		-- Cambiar color de identificadores
		vim.cmd("hi Identifier guifg=#ced0d9")
		
		-- Delimitadores (paréntesis, etc.)
		vim.api.nvim_set_hl(0, "Delimiter", { fg = "#ABB2BF" })
		
		-- Fondo transparente
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		
		-- Configuración consistente de separadores de ventana
		vim.o.fillchars = "vert:│,horiz:─,horizup:┴,horizdown:┬,vertleft:┤,vertright:├,verthoriz:┼"
		vim.cmd("highlight WinSeparator guifg=#6c7086 guibg=NONE")
	end
}
