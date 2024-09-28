-- lsp-zero adds an abstraction layer on top of nvim-lspconfig to more easily
-- set up lsp and use Neovim's LSP client as well as nvmi-cmp
return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        lsp_zero.extend_lspconfig({
            sign_text = true,
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
            callback = function(event)
                local telescope = require("telescope.builtin")

                vim.keymap.set("n", "gd", telescope.lsp_definitions, { buffer = event.buf, desc = "Goto Definition" })
                vim.keymap.set("n", "gr", telescope.lsp_references, { buffer = event.buf, desc = "Goto References" })
                vim.keymap.set("n", "gt", telescope.lsp_type_definitions, { buffer = event.buf, desc = "Type [D]efinition" })
                vim.keymap.set("n", "F2", vim.lsp.buf.rename, { buffer = event.buf, desc = "Rename" })
                vim.keymap.set({ "n", "i", "x" }, "<A-enter>", vim.lsp.buf.code_action, { buffer = event.buf, desc = "Code Action" })

                -- Highlight the variable under cursor
                local client = vim.lsp.get_client_by_id(event.data.client_id)
                if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
                    local highlight_augroup = vim.api.nvim_create_augroup("lsp-highlight", { clear = false })
                    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
                        buffer = event.buf,
                        group = highlight_augroup,
                        callback = vim.lsp.buf.document_highlight,
                    })

                    vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
                        buffer = event.buf,
                        group = highlight_augroup,
                        callback = vim.lsp.buf.clear_references,
                    })

                    vim.api.nvim_create_autocmd("LspDetach", {
                        group = vim.api.nvim_create_augroup("lsp-detach", { clear = true }),
                        callback = function(event2)
                            vim.lsp.buf.clear_references()
                            vim.api.nvim_clear_autocmds({ group = "lsp-highlight", buffer = event2.buf })
                        end,
                    })
                end
            end,
        })

        lsp_zero.setup()
    end,
}
