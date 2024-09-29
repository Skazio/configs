-- gitsigns display hint in sign column (add, modif, delete)
-- it  also add hunks manipulation
return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local gitsigns = require("gitsigns")

        gitsigns.setup()

        vim.keymap.set("v", "<leader>gs", function()
            gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end)
    end,
}
