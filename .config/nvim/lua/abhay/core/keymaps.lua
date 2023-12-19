-- set leader key to space
vim.g.mapleader = " "

-- General Keymaps -------------------

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

--Line numbers

vim.wo.number = true
vim.wo.relativenumber = true

local keymap = vim.keymap -- for conciseness

---------------------

-- window management
keymap.set("n", "J", "5j", { desc = "Move 5 lines down" })                        -- move 5 lines down
keymap.set("n", "K", "5k", { desc = "Move 5 lines up" })                          -- move 5 lines up
keymap.set("n", "<leader>w", "<cmd> w <CR>", { desc = "Write buffer" })           -- save file
keymap.set("n", "<leader>qq", "<cmd> qa <CR>", { desc = "Close neovim" })         -- close neovim
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
