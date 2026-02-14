-- Gestor de temas para Neovim
-- Este archivo importa todos los temas disponibles
-- Para cambiar de tema, modifica el campo 'enabled' en el archivo correspondiente

return {
	-- Tema ACTIVO: doom-one
	{ import = "plugins.themes.doom-one" },

	-- Temas INACTIVOS (cambiar enabled = true para probar)
	{ import = "plugins.themes.onedark-nvim" },
	{ import = "plugins.themes.onedark-vim" },
	{ import = "plugins.themes.catppuccin" },
}
