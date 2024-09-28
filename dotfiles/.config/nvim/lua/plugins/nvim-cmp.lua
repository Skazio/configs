-- cmp adds an interface and keybinding for autocompletion
-- it relies on external sources and external snippets for the data to show
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-space>"] = cmp.mapping.complete(),
                ["<tab>"] = cmp.mapping.select_next_item(cmp_select),
                ["<S-tab>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
            }),
            sources = {
                { name = "nvim_lsp" },
                { name = "nvim_lsp_signature_help" },
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
        })
    end,
}
