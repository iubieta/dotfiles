-- Tema: doom-one
-- Tema oscuro basado en Doom Emacs
-- ACTIVO: enabled = true

return {
	"NTBBloodbath/doom-one.nvim",
	lazy = false,
	priority = 1000,
	enabled = true,  -- Tema ACTIVO
	config = function()
		-- Configuraciones de doom-one
		vim.g.doom_one_cursor_coloring = false
		vim.g.doom_one_terminal_colors = true
		vim.g.doom_one_italic_comments = true  -- Mantener cursivas
		vim.g.doom_one_enable_treesitter = true
		vim.g.doom_one_diagnostics_text_color = false
		vim.g.doom_one_transparent_background = true  -- Fondo transparente
		
		-- Pumblend transparency (desactivado)
		vim.g.doom_one_pumblend_enable = false
		vim.g.doom_one_pumblend_transparency = 20
		
		-- Integración con plugins existentes
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_telescope = true
		vim.g.doom_one_plugin_neorg = false  -- No tienes neorg instalado
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_neogit = false
		vim.g.doom_one_plugin_startify = false
		vim.g.doom_one_plugin_vim_illuminate = false
		vim.g.doom_one_plugin_lspsaga = false
		
		-- Cargar el tema
		vim.cmd("colorscheme doom-one")
		
		-- Configuración consistente de separadores de ventana
		vim.o.fillchars = "vert:│,horiz:─,horizup:┴,horizdown:┬,vertleft:┤,vertright:├,verthoriz:┼"
		vim.cmd("highlight WinSeparator guifg=#5a6370 guibg=NONE")
	end
}
