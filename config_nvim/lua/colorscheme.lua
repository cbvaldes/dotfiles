vim.opt.background = 'dark'

local status, _ = pcall(vim.cmd, 'colorscheme nord')
if not status then
	vim.notify('Failed to load colorscheme', vim.log.levels.WARN)
end
