return {
    "sindrets/diffview.nvim",
    config = function()
        require("diffview").setup({})

        vim.keymap.set("n", "<leader>gp", ":DiffviewFileHistory --follow %<CR>", { desc = "Git file history" })
    end,
}
