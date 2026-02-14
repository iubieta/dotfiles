-- Tema: onedark.nvim (versión Lua)
-- Tema oscuro inspirado en Atom One Dark
-- INACTIVO: enabled = false

return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	enabled = false,  -- Tema INACTIVO
	config = function()
		-- Configuración del tema onedark
		require('onedark').setup({
			-- Main options
			style = 'cool', -- Estilo: dark, darker, cool, deep, warm, warmer, light
			transparent = true,  -- Fondo transparente
			term_colors = true, -- Cambiar colores del terminal
			ending_tildes = false, -- Ocultar tildes al final del buffer
			cmp_itemkind_reverse = false,
			
			-- Cambiar estilo de código
			code_style = {
				comments = 'italic',
				keywords = 'none',
				functions = 'none',
				strings = 'none',
				variables = 'none'
			},
			
			-- Lualine
			lualine = {
				transparent = false,
			},
			
			-- Colores personalizados
			colors = {},
			highlights = {},
			
			-- Configuración de diagnósticos
			diagnostics = {
				darker = true,
				undercurl = true,
				background = true,
			},
		})
		
		-- Cargar el tema
		require('onedark').load()
		
		-- Configuración consistente de separadores de ventana
		vim.o.fillchars = "vert:│,horiz:─,horizup:┴,horizdown:┬,vertleft:┤,vertright:├,verthoriz:┼"
		vim.cmd("highlight WinSeparator guifg=#6c7086 guibg=NONE")
	end
}
