-- cmp adds an interface and keybinding for autocompletion
-- it relies on external sources and external snippets for the data to show
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "onsails/lspkind.nvim", -- icons in the pop-up menu
        "L3MON4D3/LuaSnip", -- snippet engine
        "saadparwaiz1/cmp_luasnip", -- provide LuaSnip as a source to cmp
        "rafamadriz/friendly-snippets", -- collection of snippets across languages
    },
    event = "InsertEnter",
    config = function()
        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        require("luasnip.loaders.from_vscode").lazy_load()

        local lspkind = require("lspkind")

        cmp.setup({
            formatting = {
                format = lspkind.cmp_format({
                    mode = "symbol_text",
                    maxwidth = {
                        menu = 50,
                        abbr = 50,
                    },
                    symbol_map = { Supermaven = "" },
                    ellipsis_char = "...",
                    show_labelDetails = true,

                    -- The function below will be called before any actual modifications from lspkind
                    -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                    before = function(entry, vim_item)
                        -- ...
                        P(vim_item.abbr)
                        return vim_item
                    end,
                }),
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-space>"] = cmp.mapping.complete(),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
            }),
            sources = {
                { name = "nvim_lsp_signature_help" },
                { name = "luasnip" },
                { name = "nvim_lsp" },
                -- { name = "supermaven" },
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
        })
    end,
}
