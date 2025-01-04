return {
    "Wansmer/treesj",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        {
            "<leader>ii",
            function()
                require("treesj").toggle()
            end,
            desc = "Toggle Split/Join",
        },

        {
            "<leader>is",
            function()
                require("treesj").split()
            end,
            desc = "Split section",
        },

        {
            "<leader>ij",
            function()
                require("treesj").join()
            end,
            desc = "Join section",
        },
    },
    opts = {
        use_default_keymaps = false,
        max_join_length = 999,
    },
}
