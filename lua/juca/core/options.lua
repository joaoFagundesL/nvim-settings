vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
		vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
		vim.cmd("highlight CursorLineNR guibg=NONE ctermbg=NONE")
		vim.cmd("highlight Text guibg=NONE ctermbg=NONE")
		vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NvimTreeWinSeparator guibg=none guifg=none")
		vim.cmd("highlight NvimTreeNormal guibg=none guifg=none")
	end,
})

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- block cursor for all modes
opt.guicursor = "n-v-i-c:block-Cursor"
