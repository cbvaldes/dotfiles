-- Based on Nord (www.nordtheme.com)

vim.cmd('highlight clear')

if vim.fn.exists('syntax on') then
	vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'nord'

local colors = {
	-- Polar Night
	nord0 = '#2E3440',
	nord1 = '#3B4252',
	nord2 = '#434C5E',
	nord3 = '#4C566A',

	-- Snow Storm
	nord4 = '#D8DEE9',
	nord5 = '#E5E9F0',
	nord6 = '#ECEFF4',

	-- Frost
	nord7  = '#8FBCBB',
	nord8  = '#88C0D0',
	nord9  = '#81A1C1',
	nord10 = '#5E81AC',

	-- Aurora
	nord11 = '#BF616A',
	nord12 = '#D08780',
	nord13 = '#EBCB8B',
	nord14 = '#A3BE8C',
	nord15 = '#B48EAD'
}

local nvim_set_hl = function(ns_id)
	return function(name, val)
		vim.api.nvim_set_hl(ns_id, name, val)
	end
end

local highlight = nvim_set_hl(0)

-- Editor

highlight('ColorColumn', {                    bg = colors.nord1  })
highlight('Cursor'     , { fg = colors.nord0, bg = colors.nord4  })
highlight('CursorLine' , {                    bg = colors.nord1  })
highlight('Error',       { fg = colors.nord4 , bg = colors.nord11 })
highlight('iCursor',     { fg = colors.nord0 , bg = colors.nord4  })
highlight('LineNr',      { fg = colors.nord3                      })
highlight('MatchParen',  { fg = colors.nord8 , bg = colors.nord3  })
highlight('NonText',     { fg = colors.nord2                      })
highlight('Normal',      { fg = colors.nord4 , bg = colors.nord0  })
highlight('Pmenu',       { fg = colors.nord4 , bg = colors.nord2  })
highlight('PmenuSbar',   { fg = colors.nord4 , bg = colors.nord2  })
highlight('PmenuSel',    { fg = colors.nord8 , bg = colors.nord3  })
highlight('PmenuThumb',  { fg = colors.nord8 , bg = colors.nord3  })
highlight('SpecialKey',  { fg = colors.nord3                      })
highlight('SpellBad',    { fg = colors.nord11, bg = colors.nord0  })
highlight('SpellCap',    { fg = colors.nord13, bg = colors.nord0  })
highlight('SpellLocal',  { fg = colors.nord5 , bg = colors.nord0  })
highlight('SpellRare',   { fg = colors.nord6 , bg = colors.nord0  })
highlight('Visual',      {                     bg = colors.nord2  })
highlight('VisualNOS',   {                     bg = colors.nord2  })

-- Terminal

vim.g.terminal_color_0  = colors.nord1
vim.g.terminal_color_1  = colors.nord11
vim.g.terminal_color_2  = colors.nord14
vim.g.terminal_color_3  = colors.nord13
vim.g.terminal_color_4  = colors.nord9
vim.g.terminal_color_5  = colors.nord15
vim.g.terminal_color_6  = colors.nord8
vim.g.terminal_color_7  = colors.nord5
vim.g.terminal_color_8  = colors.nord3
vim.g.terminal_color_9  = colors.nord11
vim.g.terminal_color_10 = colors.nord14
vim.g.terminal_color_11 = colors.nord13
vim.g.terminal_color_12 = colors.nord9
vim.g.terminal_color_13 = colors.nord15
vim.g.terminal_color_14 = colors.nord7
vim.g.terminal_color_15 = colors.nord6

-- Diagnostics

highlight('DiagnosticWarn',  { fg = colors.nord13 })
highlight('DiagnosticError', { fg = colors.nord11 })
highlight('DiagnosticInfo',  { fg = colors.nord8  })
highlight('DiagnosticHint',  { fg = colors.nord10 })

highlight('DiagnosticUnderlineWarn',  { fg = colors.nord13 })
highlight('DiagnosticUnderlineError', { fg = colors.nord11 })
highlight('DiagnosticUnderlineInfo',  { fg = colors.nord8  })
highlight('DiagnosticUnderlineHint',  { fg = colors.nord10 })

-- Gutter

highlight('CursorColumn', {                    bg = colors.nord1 })
highlight('CursorLineNr', { fg = colors.nord4                    })
highlight('Folded',       { fg = colors.nord3, bg = colors.nord1 })
highlight('FoldColumn',   { fg = colors.nord3, bg = colors.nord0 })
highlight('SignColumn',   { fg = colors.nord1, bg = colors.nord0 })

-- Search

highlight('IncSearch', { fg = colors.nord6, bg = colors.nord10 })
highlight('Search',    { fg = colors.nord1, bg = colors.nord8  })

-- Tabs

highlight('TabLine',     { fg = colors.nord4, bg = colors.nord1 })
highlight('TabLineFill', { fg = colors.nord4, bg = colors.nord1 })
highlight('TabLineSel',  { fg = colors.nord8, bg = colors.nord3 })

-- Window

highlight('Title',     { fg = colors.nord4                    })
highlight('VertSplit', { fg = colors.nord2, bg = colors.nord0 })

-- Syntax

highlight('Boolean',        { fg = colors.nord9  })
highlight('Character',      { fg = colors.nord14 })
highlight('Comment',        { fg = colors.nord14 })
highlight('Conditional',    { fg = colors.nord9  })
highlight('Constant',       { fg = colors.nord4  })
highlight('Decorator',      { fg = colors.nord12 })
highlight('Define',         { fg = colors.nord9  })
highlight('Delimiter',      { fg = colors.nord6  })
highlight('Exception',      { fg = colors.nord9  })
highlight('Float',          { fg = colors.nord15 })
highlight('Function',       { fg = colors.nord8  })
highlight('Identifier',     { fg = colors.nord4  })
highlight('Include',        { fg = colors.nord9  })
highlight('Keyword',        { fg = colors.nord9  })
highlight('Label',          { fg = colors.nord9  })
highlight('Number',         { fg = colors.nord15 })
highlight('Operator',       { fg = colors.nord9  })
highlight('PreProc',        { fg = colors.nord9  })
highlight('Repeat',         { fg = colors.nord9  })
highlight('Special',        { fg = colors.nord4  })
highlight('SpecialChar',    { fg = colors.nord13 })
highlight('SpecialComment', { fg = colors.nord8  })
highlight('Statement',      { fg = colors.nord9  })
highlight('StorageClass',   { fg = colors.nord9  })
highlight('String',         { fg = colors.nord14 })
highlight('Structure',      { fg = colors.nord9  })
highlight('Tag',            { fg = colors.nord4  })
highlight('Todo',           { fg = colors.nord13 })
highlight('Type',           { fg = colors.nord9  })
highlight('Typedef',        { fg = colors.nord9  })

highlight('Annotation', { link = 'Decorator'  })
highlight('Macro',      { link = 'Define'     })
highlight('PreCondit',  { link = 'PreProc'    })
highlight('Variable',   { link = 'Identifier' })

highlight('DiffAdd',    { fg = colors.nord14, bg = colors.nord0 })
highlight('DiffChange', { fg = colors.nord13, bg = colors.nord0 })
highlight('DiffDelete', { fg = colors.nord11, bg = colors.nord0 })
highlight('DiffText',   { fg = colors.nord9 , bg = colors.nord0 })

-- Status line

highlight('StatusLine1', { fg = colors.nord4, bg = colors.nord3 })
highlight('StatusLine2', { fg = colors.nord4, bg = colors.nord1 })
