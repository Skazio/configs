-- auto-save automatically saves the buffer when exiting insert mode or after
-- some delay when the content of the buffer has changed
return {
    "Pocco81/auto-save.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        enabled = true,
        execution_message = {
            message = "",
        },
    },
}
