vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local cmd = vim.cmd -- for conciseness

keymap.set("n", "<leader>pv", cmd.NvimTreeToggle)

-- Move selected line / block of text in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Enable Vim Navigation in tmux
keymap.set("n", "<C-h>", cmd.TmuxNavigateLeft)
keymap.set("n", "<C-j>", cmd.TmuxNavigateDown)
keymap.set("n", "<C-k>", cmd.TmuxNavigateUp)
keymap.set("n", "<C-l>", cmd.TmuxNavigateRight)

-- Copy to system clipboard
keymap.set("v", "<leader>y", '"*y')
keymap.set("n", "<leader>y", '"+y')

-- Paste from system clipboard
keymap.set("n", "<leader>p", '"+p')
keymap.set("n", "<leader>P", '"+P')
