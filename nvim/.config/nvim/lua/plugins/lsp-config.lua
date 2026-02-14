return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.config({
				virtual_text = { prefix = "●", spacing = 2 },
			})
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
		lspconfig.clangd.setup({
			cmd = { "clangd" },
			filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "tpp" },
			init_options = {
				fallbackFlags = { "-xc++", "-std=c++98" },
			},
				on_attach = function(client, bufnr)
					-- Habilitar formato solo para null-ls
					if client.name == "null-ls" then
						client.server_capabilities.documentFormattingProvider = true
					else
						client.server_capabilities.documentFormattingProvider = false
					end
				end,
			})
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
