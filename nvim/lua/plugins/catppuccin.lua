
return	{
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
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

			color_overrides = {

				},

			custom_highlights = {
				LineNr = { fg = "#6c7086", bg = "NONE" },
				CursorLineNr = { fg = "#f9e2af", bg = "NONE" },
				StatusLine = { fg = "NONE", bg = "#11111b" }, -- Línea de estado activa
				Comment = { fg = "#6c7086", italic = true },
			},
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
		-- vim.cmd.colorscheme "catppuccin"

		-- Mostrar lineas de division de ventanas
		vim.o.fillchars = "vert:│,horiz:─,horizup:┴,horizdown:┬,vertleft:┤,vertright:├,verthoriz:┼"
		vim.cmd("highlight WinSeparator guifg=#6c7086 guibg=NONE")

		-- indent line colors
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#6c7086" })
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#45475a" })


		-- Ajusta el color de las líneas (opcional)
		-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#6c7086", bg = "NONE" })

	end
}
