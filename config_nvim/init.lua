-- Options

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.fileformats = "unix,dos"

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.backspace = "indent,eol,start"

vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.listchars = { tab = "\\u2192\\u0020", trail = "\\u00b7", nbsp = "\\u2423" }

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.belloff = "all"
vim.opt.clipboard = "unnamedplus"

vim.opt.showmode = false

-- Keymaps

vim.keymap.set("n", "<left>",  function() end)
vim.keymap.set("n", "<right>", function() end)
vim.keymap.set("n", "<up>",    function() end)
vim.keymap.set("n", "<down>",  function() end)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>rc", "<cmd>source ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>oc", "<cmd>edit ~/.config/nvim/init.lua<CR>")

vim.keymap.set("n", "<leader>el", "<cmd>set list<CR>")
vim.keymap.set("n", "<leader>dl", "<cmd>set nolist<CR>")

vim.keymap.set("n", "<leader>esc", "<cmd>setlocal spell spelllang=en_us<CR>")
vim.keymap.set("n", "<leader>dsc", "<cmd>setlocal nospell<CR>")

-- Status line

local ctrl_s = vim.api.nvim_replace_termcodes("<C-S>", true, true, true)
local ctrl_v = vim.api.nvim_replace_termcodes("<C-V>", true, true, true)

local status_line_modes = {
	["n"]    = " NORMAL   ",
	["v"]    = " VISUAL   ",
	["V"]    = " V-line   ",
	[ctrl_v] = " V-BLOCK  ",
	["s"]    = " SELECT   ",
	["S"]    = " S-LINE   ",
	[ctrl_s] = " S-BLOCK  ",
	["i"]    = " INSERT   ",
	["R"]    = " REPLACE  ",
	["c"]    = " COMMAND  ",
	["r"]    = " PROMPT   ",
	["!"]    = " SHELL    ",
	["t"]    = " TERMINAL "
}

custom_status_line = function()
	return string.format(
		" %s %s %s",
		status_line_modes[vim.fn.mode()],
		"%f%m%r%=%y[%{&fenc}][%{&ff}]",
		"%l:%v "
	)
end

vim.go.statusline = '%!v:lua.custom_status_line()'
