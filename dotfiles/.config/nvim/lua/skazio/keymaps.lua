vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", "<Esc>:NvimTreeToggle<CR>")

vim.keymap.set("n", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>gi")
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv")

vim.keymap.set("n", "<leader>h", "<Esc>:nohl<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "i", "v" }, "<C-Tab>", "<Esc>:BufferNext<CR>")
vim.keymap.set({ "n", "i", "v" }, "<C-S-Tab>", "<Esc>:BufferPrevious<CR>")

vim.keymap.set("n", "Y", "y$")

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

vim.keymap.set("n", "<leader>qo", ":copen<CR>")
vim.keymap.set("n", "<leader>qc", ":cclose<CR>")
vim.keymap.set("n", "<leader>qn", ":cnext<CR>")
vim.keymap.set("n", "<leader>qp", ":cprev<CR>")

