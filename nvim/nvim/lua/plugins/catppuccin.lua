
return	{
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "auto", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
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
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			-- color_overrides = {default},
			-- custom_highlights = {CursorLineNr},
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
		-- setup must be called before loading
		vim.cmd.colorscheme "catppuccin"

		-- Mostrar lineas de division de ventanas
		vim.o.fillchars = "vert:│,horiz:─,horizup:┴,horizdown:┬,vertleft:┤,vertright:├,verthoriz:┼"
		vim.cmd("highlight WinSeparator guifg=#6c7086 guibg=NONE")
		-- Ajusta el color de las líneas (opcional)
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#6c7086", bg = "NONE" })

		-- Cambiar el color de la línea de estado
		--vim.api.nvim_set_hl(0, "StatusLine", { fg = "NONE", bg = "#11111b" })  -- Línea de estado activa
		--vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#a6a6c6", bg = "#181825" }) -- Línea de estado inactiva

		-- Cambiar color de los números de línea
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#6c7086", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#fab387", bg = "NONE" })
	end
}
