return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    event = "InsertEnter",
    config = function()
        local ls = require("luasnip")

        require("snippets.vue")

        vim.keymap.set({ "i", "s" }, "<tab>", function()
            if ls.locally_jumpable(1) then
                ls.jump(1)
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<tab>", true, true, true), "n", true)
            end
        end)

        vim.keymap.set({ "i", "s" }, "<S-tab>", function()
            if ls.locally_jumpable(1) then
                ls.jump(-1)
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-tab>", true, true, true), "n", true)
            end
        end)
    end,
}
