return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local actions = require("telescope.actions")
			local themes = require("telescope.themes")

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-h>"] = actions.close,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-l>"] = actions.select_default,
						},
					},
				},
				extensions = {
					["ui-select"] = themes.get_dropdown({}),
				},
			})

			telescope.load_extension("ui-select")

			local function telescope_hl()
				vim.api.nvim_set_hl(0, "TelescopeBorder",       { fg = "#b7bdf8", bg = "NONE" })
				vim.api.nvim_set_hl(0, "TelescopeNormal",       { bg = "NONE" })
				vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "NONE" })
			end

			vim.api.nvim_create_autocmd("Colorscheme", {
				callback = telescope_hl,
			})

			telescope_hl()

			-- Keymaps básicos
			vim.keymap.set("n", "<leader>ff", builtin.find_files)
			vim.keymap.set("n", "<leader>fg", builtin.live_grep)
			vim.keymap.set("n", "<leader>fb", builtin.buffers)
			vim.keymap.set("n", "<leader>fh", builtin.help_tags)
		end,
	},
}
