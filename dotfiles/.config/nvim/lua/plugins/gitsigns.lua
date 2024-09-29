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
        end, { desc = "Git stage selected hunks" })

        vim.keymap.set("v", "<leader>gr", function()
            gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "Git reset selected hunks" })

        vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Git preview hunk" })

        vim.keymap.set("n", "[h", gitsigns.prev_hunk, { desc = "Git previous hunk" })
        vim.keymap.set("n", "]h", gitsigns.next_hunk, { desc = "Git next hunk" })
    end,
}
