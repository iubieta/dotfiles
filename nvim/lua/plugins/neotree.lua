return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			popup_border_style = "rounded",  -- Opcional, estilo del borde
			window = {
				position = "current",
				-- width = 30,  -- Ancho de la ventana flotante
				-- height = 40, -- Altura de la ventana flotante
			},
		})
		vim.keymap.set('n', '<leader>e', ':Neotree current .<CR>') -- Mapeo para abrirlo
	end
}
