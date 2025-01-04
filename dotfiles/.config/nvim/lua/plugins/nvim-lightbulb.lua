return {
    "kosayoda/nvim-lightbulb",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
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
    },
}
