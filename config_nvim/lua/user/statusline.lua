local ctrl_s = vim.api.nvim_replace_termcodes("<C-S>", true, true, true)
local ctrl_v = vim.api.nvim_replace_termcodes("<C-V>", true, true, true)

local status_line_modes = {
	["n"]    = "   NORMAL ",
	["v"]    = "   VISUAL ",
	["V"]    = "   V-LINE ",
	[ctrl_v] = "  V-BLOCK ",
	["s"]    = "   SELECT ",
	["S"]    = "   S-LINE ",
	[ctrl_s] = "  S-BLOCK ",
	["i"]    = "   INSERT ",
	["R"]    = "  REPLACE ",
	["c"]    = "  COMMAND ",
	["r"]    = "   PROMPT ",
	["!"]    = "    SHELL ",
	["t"]    = " TERMINAL "
}

custom_status_line = function()
	return string.format(
		"%%#StatusLine1#%s%%#StatusLine2# %s %%#StatusLine1# %s",
		status_line_modes[vim.fn.mode()],
		"%f%m%r%=%y[%{&fenc}][%{&ff}]",
		"%l:%v "
	)
end

vim.go.statusline = "%!v:lua.custom_status_line()"
