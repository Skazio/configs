-- gitsigns display hint in sign column (add, modif, delete)
-- it  also add hunks manipulation
return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local gitsigns = require("gitsigns")

        gitsigns.setup()

        vim.keymap.set("v", "<leader>hs", function()
            gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "Stage selected Hunk" })
        vim.keymap.set("n", "<leader>hs", function()
            gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "Stage current line Hunk" })

        vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Rest Hunk" })
        vim.keymap.set("v", "<leader>hr", function()
            gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "Reset selected Hunk" })

        vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Hunk preview" })

        vim.keymap.set("n", "[h", gitsigns.prev_hunk, { desc = "Previous Hunk" })
        vim.keymap.set("n", "]h", gitsigns.next_hunk, { desc = "Next Hunk" })

        vim.keymap.set("n", "<leader>gb", gitsigns.blame, { desc = "Git blame" })
    end,
}
