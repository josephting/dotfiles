vim.g.mapleader = " "
vim.g.maplocalleader = [[  ]]

vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "kj", "<ESC>", { desc = "Return to normal mode" })

-- clipboard
vim.keymap.set("v", "<Leader>y", "\"+y")
vim.keymap.set("v", "<Leader>d", "\"+d")
vim.keymap.set("v", "<Leader>p", "\"+p")
vim.keymap.set("v", "<Leader>P", "\"+P")
vim.keymap.set("n", "<Leader>y", "\"+yy")
vim.keymap.set("n", "<Leader>p", "\"+p")
vim.keymap.set("n", "<Leader>P", "\"+P")

-- options
vim.o.laststatus = 3
vim.o.showmode = false
vim.o.cursorline = true
vim.o.cursorlineopt = "both"

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.ruler = false

vim.o.list = true
vim.o.listchars = "tab:→\\ ,multispace:·,trail:␣,precedes:«,extends:»,nbsp:␣"

