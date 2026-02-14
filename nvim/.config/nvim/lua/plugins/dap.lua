return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function ()
		local dap, dapui = require("dap"), require("dapui")

		-- User Interface setup
		require("nvim-dap-virtual-text").setup()

		require("dapui").setup()

		-- dap.listeners.before.attach.dapui_config = function()
		-- 	dapui.open()
		-- end
		-- dap.listeners.before.launch.dapui_config = function()
		-- 	dapui.open()
		-- end
		-- dap.listeners.before.event_terminated.dapui_config = function()
		-- 	dapui.close()
		-- end
		-- dap.listeners.before.event_exited.dapui_config = function()
		-- 	dapui.close()
		-- end

		-- Keymaps
		vim.keymap.set('n', '<Leader>db', dap.toggle_breakpoint, {})
		vim.keymap.set('n', '<Leader>dc', dap.continue, {})
		vim.keymap.set('n', '<Leader>dt', dap.terminate, {})
		vim.keymap.set('n', '<Leader>du', dapui.open, {})
		vim.keymap.set('n', '<Leader>dq', dapui.close, {})
	end
}
