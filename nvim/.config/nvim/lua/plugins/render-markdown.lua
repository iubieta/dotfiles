return {
	{
		'MeanderingProgrammer/render-markdown.nvim',
		ft = { 'markdown' },  -- Lazy loading: solo se carga en archivos .md
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
		opts = {
			-- Renderizar solo en modo normal, command y terminal
			render_modes = { 'n', 'c', 't' },
			
			heading = {
				-- Habilitar renderizado de headings
				enabled = true,
				
				-- Iconos para cada nivel de heading
				icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
				
				-- Posición del icono
				position = 'overlay',
				
				-- Ancho completo de la ventana
				width = 'full',
				
				-- Bordes arriba y abajo de los headings
				border = false,
				border_virtual = false,
				border_prefix = false,
				above = '▄',
				below = '▀',
				
				-- Highlight groups para fondos (serán personalizados)
				-- backgrounds = {
				-- 	'RenderMarkdownH1Bg',
				-- 	'RenderMarkdownH2Bg',
				-- 	'RenderMarkdownH3Bg',
				-- 	'RenderMarkdownH4Bg',
				-- 	'RenderMarkdownH5Bg',
				-- 	'RenderMarkdownH6Bg',
				-- },
				
				-- Highlight groups para iconos
				foregrounds = {
					'RenderMarkdownH1',
					'RenderMarkdownH2',
					'RenderMarkdownH3',
					'RenderMarkdownH4',
					'RenderMarkdownH5',
					'RenderMarkdownH6',
				},
			},
			
			-- Configuración de bloques de código
			code = {
				enabled = true,
				sign = false,
				width = 'full',
				left_pad = 1,
				right_pad = 1,
				border = 'thin',
			},
		},
		
		config = function(_, opts)
			require('render-markdown').setup(opts)
			-- Configuración adicional de highlights puede ir aquí
		end
	}
}
