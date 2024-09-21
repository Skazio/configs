return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    },
    config = function ()
        local lsp = require("lsp-zero")
        lsp.extend_lspconfig()

        lsp.preset("recommended")

        local cmp = require("cmp")
        local cmp_select = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-space>'] = cmp.mapping.complete(),
                ['<tab>'] = cmp.mapping.select_next_item(cmp_select),
                ['<S-tab>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<CR>'] = cmp.mapping.confirm({select = true}),
            }),
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
        })

        lsp.on_attach(function(client, bufnr)
            local opts = {buffer = bufnr, remap = false}
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
            -- Replace the language servers listed here 
            -- with the ones you want to install
            ensure_installed = {
                'tsserver',
                'eslint',
                'lua_ls',
                'vimls',
            },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })

        lsp.setup()

        local vue_language_server_path = require("mason-registry").get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'

        require("lspconfig").tsserver.setup {
            init_options = {
                plugins = {
                    {
                        name = '@vue/typescript-plugin',
                        location = vue_language_server_path,
                        languages = { 'vue' },
                    },
                },
            },
            filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        }

        require'lspconfig'.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        }
    end
}

