-- How to find on a key got map:
-- :verbose map <keymap_sequence>
-- ie. :verbose map gr

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("c", "h ", "vert bo help ")

vim.keymap.set("n", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>gi")
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv")

vim.keymap.set("n", "<leader>sh", "<Esc>:nohl<CR>", { desc = "Remove current search highlight" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line 1 down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line 1 up" })

vim.keymap.set("n", "Y", "y$", { desc = "Copy till the end of line" })

-- vim.keymap.set("n", "<leader>ss", "<Esc>:%s/\\V") -- not sure to keep
-- vim.keymap.set("n", "<leader>sr", "<Esc>:%s/") -- not sure to keep

vim.keymap.set("n", "zC", "zcvzC", { desc = "Fold recursively" })
vim.keymap.set("n", "zO", "zozczO", { desc = "Unfold recursively" })

vim.keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>qx", ":cclose<CR>", { desc = "Close quickfix list" })
vim.keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Next quickfix element" })
vim.keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "Previous quickfix element" })

vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", ":tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set("n", "gh", function()
    vim.diagnostic.open_float()
end, { desc = "Get help on error message" })

vim.keymap.set("n", "<leader>c", function()
    local path = vim.fn.expand("%:.")
    vim.fn.setreg("+", path)
end, { desc = "Copy the relative path of the file" })
