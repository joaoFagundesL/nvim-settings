return {
	{
		-- "ellisonleao/gruvbox.nvim",
		-- "folke/tokyonight.nvim",
		"fxn/vim-monochrome",
		priority = 1000, -- make sure to load this before all the other start plugins

		config = function()
			vim.cmd([[colorscheme monochrome]])
		end,
	},
}
