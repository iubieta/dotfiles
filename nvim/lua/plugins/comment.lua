return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({})
		-- Comentario para líneas
		vim.api.nvim_set_keymap("n", "<leader>c", "gcc", { noremap = true, silent = true })
		-- Comentario para bloques seleccionados
		vim.api.nvim_set_keymap("v", "<leader>c", "gc", { noremap = true, silent = true })
	end,
}
