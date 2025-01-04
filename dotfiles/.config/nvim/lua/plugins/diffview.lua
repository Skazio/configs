return {
    "sindrets/diffview.nvim",
    opts = {},
    keys = {
        {
            "<leader>gd",
            ":DiffviewOpen<CR>",
            desc = "Open the Git diff",
        },

        {
            "<leader>gp",
            ":DiffviewFileHistory -f %<CR>",
            desc = "Git previous version of the file",
        },
    },
}
