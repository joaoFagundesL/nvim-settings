return {
	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"jay-babu/mason-nvim-dap.nvim",
		"theHamsta/nvim-dap-virtual-text",
	},

	config = function()
		local dap, dapui = require("dap"), require("dapui")
		dapui.setup()
	end,

	keys = {
		{ "<leader>bt", "<cmd>DapToggleBreakpoint<CR>" },
		{ "<leader>bo", "<cmd>DapStepOver<CR>" },
		{ "<leader>bc", "<cmd>DapContinue<CR>" },
		{ "<leader>bd", "<cmd>DapDisconnect<CR>" },
		{ "<leader>bv", "<cmd>lua require('dapui').open()<CR>" },
		{ "<leader>bx", "<cmd>lua require('dapui').close()<CR>" },
	},
}
