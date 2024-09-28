-- todo-comments highligh some keyword (ie. TODO, HACK) when in a comment and
-- followed with by colon
return {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local todo_comments = require("todo-comments")

        todo_comments.setup()
    end,
}
