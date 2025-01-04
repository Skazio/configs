-- matchme hightlight all the matching substrings that is selected in visual
-- mode
return {
    "skazio/matchme.nvim",
    keys = { "v" },
    config = function()
        require("matchme")
    end,
}
