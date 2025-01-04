return {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {
        input = {
            title_pos = "center",
            mappings = {
                n = {
                    ["<CR>"] = "Confirm",
                    ["<Esc>"] = "Close",
                },
                i = {
                    ["<CR>"] = "Confirm",
                    ["<C-p>"] = "HistoryPrev",
                    ["<C-n>"] = "HistoryNext",
                },
            },
        },
    },
}
