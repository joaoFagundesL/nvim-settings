return {
	{
		-- "ellisonleao/gruvbox.nvim",
		-- "NLKNguyen/papercolor-theme",
		-- "folke/tokyonight.nvim",
		-- "fxn/vim-monochrome",
		-- "bluz71/vim-moonfly-colors",
		"catppuccin/nvim",
		-- "metalelf0/base16-black-metal-scheme",
		-- "rose-pine/neovim",
		priority = 1000, -- make sure to load this before all the other start plugins

		config = function()
			vim.cmd([[colorscheme catppuccin-macchiato]])
		end,
	},
}
