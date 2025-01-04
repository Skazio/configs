return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim",
    },
    opts = {
        process_spinner = false,
        disable_insert_on_commit = true,

        kind = "split",
        graph_style = "unicode",
    },
    keys = {
        {
            "<leader>gs",
            ":Neogit<CR>",
            desc = "Open Git status",
        },
    },
    cmd = "Neogit",
}
