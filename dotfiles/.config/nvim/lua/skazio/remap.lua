vim.g.mapleader = " "

vim.keymap.set("n", "<C-b>", "<Esc>:NvimTreeToggle<CR>")

vim.keymap.set("n", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>gi")
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv")

vim.keymap.set("n", "<leader>h", "<Esc>:nohl<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "q:", "<nop>")

vim.keymap.set("n", "<C-S-Tab>", "<Esc>:BufferPrevious<CR>")
vim.keymap.set("n", "<C-Tab>", "<Esc>:BufferNext<CR>")
vim.keymap.set("i", "<C-S-Tab>", "<Esc>:BufferPrevious<CR>")
vim.keymap.set("i", "<C-Tab>", "<Esc>:BufferNext<CR>")

