return {
    "kosayoda/nvim-lightbulb",
    config = function()
        require("nvim-lightbulb").setup({
            autocmd = { enabled = true },

            hide_in_unfocused_buffer = true,

            sign = {
                enabled = false,
            },

            float = {
                enabled = true,
                text = "💡",
                lens_text = "🔎",
                hl = "LightBulbFloatWin",
                win_opts = {
                    focusable = false,
                },
            },
        })
    end,
}
