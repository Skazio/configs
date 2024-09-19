vim.g.mapleader = " "

vim.keymap.set("n", "<C-b>", "<Esc>:NvimTreeToggle<CR>")

vim.keymap.set("n", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>gi")
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv")

vim.keymap.set("n", "<leader>h", "<Esc>:nohl<CR>")
vim.keymap.set("n", "<leader>p", "j")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "q:", "<nop>")

vim.keymap.set("n", "<C-S-Tab>", "<Esc>:BufferPrevious<CR>")
vim.keymap.set("n", "<C-Tab>", "<Esc>:BufferNext<CR>")
vim.keymap.set("i", "<C-S-Tab>", "<Esc>:BufferPrevious<CR>")
vim.keymap.set("i", "<C-Tab>", "<Esc>:BufferNext<CR>")

vim.keymap.set("n", "Y", "Y:clip")


if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
        name = "win32yank-wsl",
        copy = {
            ["+"] = "win32yank.exe -i --crlf",
            ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
        },
        cache_enabled = true,
    }
end

vim.keymap.set("n", "<leader>ss", "<Esc>:%s/\\V")
vim.keymap.set("n", "<leader>sr", "<Esc>:%s/")

vim.keymap.set("c", "h ", "vert bo help ")

vim.keymap.set("n", "zC", "zcvzC")
vim.keymap.set("n", "zO", "zozczO")

