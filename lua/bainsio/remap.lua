vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Enable Vim Navigation in tmux
vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown)
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp)
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight)

-- Copy to system clipboard
vim.keymap.set("v", "<leader>y", '"*y')
vim.keymap.set("n", "<leader>y", '"+y')

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
