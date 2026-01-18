return {
	{
		"joshdick/onedark.vim",
		lazy = false,
		priority = 1000,
		config = function ()
			vim.opt.termguicolors = true

			-- Cargar tema 
			vim.cmd("colorscheme onedark")

			-- Cambiar rojo por blanco
			vim.cmd("hi Identifier guifg=#ced0d9")
			-- vim.cmd("hi constant guifg=#ABB2BF")
			-- vim.cmd("hi @variable guifg=#ABB2BF")
			-- vim.cmd("hi @variable.builtin guifg=#ABB2BF")

			-- Parentesis etc.
			vim.api.nvim_set_hl(0, "Delimiter", { fg = "#ABB2BF" })
			-- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#E06C75" })
			-- vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#E06C75" })

			-- Fondo transparente
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		end
	}
}
