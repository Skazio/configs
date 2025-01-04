return {
    "folke/flash.nvim",
    opts = {
        search = {
            forward = false,
            exclude = {
                "NvimTree",
                "notify",
                "cmp_menu",
                "noice",
                "flash_prompt",
                function(win)
                    return not vim.api.nvim_win_get_config(win).focusable
                end,
            },
        },
        jump = {
            autojump = true,
        },
        label = {
            uppercase = false,
        },
        modes = {
            char = {
                enabled = false,
            },
        },
    },
    keys = {
        {
            "s",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = {
                        forward = true,
                        wrap = false,
                        multi_window = false,
                    },
                })
            end,
            desc = "Flash",
        },
        {
            "S",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump({
                    search = {
                        forward = false,
                        wrap = false,
                        multi_window = false,
                    },
                })
            end,
            desc = "Flash",
        },
    },
}
