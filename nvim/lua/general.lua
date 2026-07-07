vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.cmdheight = 1

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.mouse = "nvi"
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.opt.completeopt = { "menuone", "noselect", "popup" }

vim.opt.mouse = ""

-- cool but strange
-- vim.opt.cursorline = true 

vim.g.mapleader = " "

vim.keymap.set({'i', 'n'}, "<esc>", "<cmd>noh<CR><esc>")
