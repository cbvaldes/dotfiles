vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.fileformats = 'unix,dos'

vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.backspace = 'indent,eol,start'
vim.opt.listchars = {
	tab   = '\\u2192\\u0020',
	trail = '\\u00B7',
	nbsp  = '\\u2423'
}

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.belloff = 'all'
vim.opt.clipboard = 'unnamedplus'
