require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>", { desc = "Return to normal mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
