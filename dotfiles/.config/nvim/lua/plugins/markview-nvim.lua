return {
    "OXY2DEV/markview.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false, -- not recommended to lazy load as this messes up the colors
    opts = {
        callbacks = {
            on_enable = function(buf, win)
                vim.o.foldmethod = "expr"
                vim.o.foldexpr = "nvim_treesitter#foldexpr()"
            end,

            on_disable = function(buf, win)
                vim.o.foldmethod = "manual"
                vim.o.foldexpr = 0
            end,
        },
    },
}
