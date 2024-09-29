-- fugitive is a git wrapper
return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gd", "<Esc>:Gvdiffsplit<CR>")
    end,
}
