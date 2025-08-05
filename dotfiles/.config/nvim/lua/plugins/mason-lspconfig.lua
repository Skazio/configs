-- mason-lspconfig provdie a bridge between mason (among other: LSP installer)
-- and nvim-lspconfig (server running the LSP server and talking to Neovim)
-- Among other, it matches the mason/nvim-lspconfig naming (that are sadly
-- different).
-- It also provides auto-setup of those LSP servers
return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },

    config = function()
        local mason_lspconfig = require("mason-lspconfig")

        -- We need to call this here, to make sure lsp-zero execute only after
        -- all LSP server are loaded and running
        require("lsp-zero").extend_lspconfig()

        mason_lspconfig.setup()

        mason_lspconfig.setup_handlers({
            -- default handler
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,

            -- special handlers (override the default one for case-by-case)
            -- ["volar"] = function()
            --   local vue_language_server_path = require("mason-registry")
            --     .get_package("vue-language-server")
            --     :get_install_path() .. "/node_modules/@vue/language-server"
            --
            --   local lspconfig = require("lspconfig")
            --
            --   lspconfig.ts_ls.setup({
            --     init_options = {
            --       plugins = {
            --         {
            --           name = "@vue/typescript-plugin",
            --           location = vue_language_server_path,
            --           languages = { "vue" },
            --         },
            --       },
            --     },
            --     filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
            --   })
            --
            --   lspconfig.volar.setup({})
            -- end,

            ["volar"] = function()
                local lspconfig = require("lspconfig")

                lspconfig.volar.setup({
                    filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
                    settings = {
                        volar = {
                            codeLens = {
                                tsconfigPaths = true, -- Ensure Volar respects paths in tsconfig.json
                            },
                        },
                    },
                    init_options = {
                        vue = {
                            hybridMode = false,
                        },
                    },
                })
            end,

            ["lua_ls"] = function()
                require("lspconfig").lua_ls.setup({
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" },
                            },
                        },
                    },
                })
            end,
        })
    end,
}
