vim.keymap.set("n", "<left>",  function() end)
vim.keymap.set("n", "<right>", function() end)
vim.keymap.set("n", "<up>",    function() end)
vim.keymap.set("n", "<down>",  function() end)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("n", "<leader>rc", "<cmd>source ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", "<leader>oc", "<cmd>edit ~/.config/nvim/init.lua<cr>")

vim.keymap.set("n", "<leader>el", "<cmd>set list<cr>")
vim.keymap.set("n", "<leader>dl", "<cmd>set nolist<cr>")

vim.keymap.set("n", "<leader>esc", "<cmd>setlocal spell spelllang=en_us<cr>")
vim.keymap.set("n", "<leader>dsc", "<cmd>setlocal nospell<cr>")

vim.keymap.set("n", "<leader>lp",
	function()
		if vim.fn.filereadable("project.lua") then
			vim.cmd("source project.lua")
		else
			vim.notify("No project file was found", vim.log.levels.ERROR)
		end
	end)
