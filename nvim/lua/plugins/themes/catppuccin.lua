-- Tema: Catppuccin
-- Tema pastel con variantes: latte, frappe, macchiato, mocha
-- INACTIVO: enabled = false

return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	enabled = false,  -- Tema INACTIVO
	config = function()
		require("catppuccin").setup({
			-- Variante del tema: latte (light), frappe, macchiato, mocha (dark)
			flavour = "mocha",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true,  -- Fondo transparente
			show_end_of_buffer = false,  -- Ocultar '~' al final del buffer
			term_colors = true,  -- Colores del terminal
			dim_inactive = {
				enabled = false,  -- No atenuar ventanas inactivas
				shade = "dark",
				percentage = 0.15,
			},
			no_italic = false,
			no_bold = false,
			no_underline = false,
			
			-- Estilos de código
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			
			-- Colores personalizados
			color_overrides = {},
			
			-- Highlights personalizados específicos del tema
			custom_highlights = {
				LineNr = { fg = "#6c7086", bg = "NONE" },
				CursorLineNr = { fg = "#f9e2af", bg = "NONE" },
				StatusLine = { fg = "NONE", bg = "#11111b" },
				Comment = { fg = "#6c7086", italic = true },
			},
			
			-- Integraciones con plugins
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
		
		-- Cargar el tema
		vim.cmd.colorscheme("catppuccin")
		
		-- Configuración consistente de separadores de ventana
		vim.o.fillchars = "vert:│,horiz:─,horizup:┴,horizdown:┬,vertleft:┤,vertright:├,verthoriz:┼"
		vim.cmd("highlight WinSeparator guifg=#6c7086 guibg=NONE")
		
		-- Colores específicos para indent-blankline
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#6c7086" })
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#45475a" })
	end
}
