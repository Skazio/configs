-- fugitive is a git wrapper
return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Open Git status" })
        vim.keymap.set("n", "<leader>gd", "<Esc>:Gvdiffsplit!<CR>", { desc = "Open the Git diff" })

        vim.keymap.set("n", "<leader>g>", "<Esc>:diffget //3<CR>", { desc = "Git pick the right version" })
        vim.keymap.set("n", "<leader>g<", "<Esc>:diffget //2<CR>", { desc = "Git pick the left version" })

        vim.keymap.set("n", "<leader>gl", "<Esc>:Gclog %<CR>", { desc = "Git log of the current file" })
    end,
}
