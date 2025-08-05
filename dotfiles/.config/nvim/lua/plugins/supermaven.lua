return {
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_suggestion = "<C-f>",
                clear_suggestion = "<S-Tab>",
                color = {
                    suggestion_color = "#6696e3",
                    cterm = 244,
                },
            },
        })
    end,
}
