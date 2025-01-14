-- conform formats files based on the formatter per file type
return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            -- TODO: Add formatter by file type
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                svelte = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                vue = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" },
                python = { "ruff", "ruff_format", "ruff_organize_imports" },
            },
        })

        vim.keymap.set({ "n", "v", "i" }, "<C-s>", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
