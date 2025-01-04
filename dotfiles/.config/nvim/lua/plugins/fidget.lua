return {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    opts = {
        progress = {
            suppress_on_insert = false,
            ignore_done_already = false,
            ignore_empty_message = false,

            display = {
                icon_style = "Normal", -- Highlight group for group icons
                skip_history = false,
            },
        },

        notification = {
            window = {
                normal_hl = "Comment", -- Base highlight group in the notification window
                winblend = 0, -- Background color opacity in the notification window
            },
        },
    },
}
