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
