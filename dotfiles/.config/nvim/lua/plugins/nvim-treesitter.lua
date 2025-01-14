-- nvim-treesitter anaylze the current buffer to create an AST used for
-- enhanced editor capabilities (ie. better highlight, textobjects, selection)
-- Needs the language parser to be installed
return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        -- NOTE: We need to use `config` instead of `opts` to load treesitter
        -- early
        require("nvim-treesitter.configs").setup({
            -- TODO: Install the needed parsers
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "query",
            },

            ignore_install = {},
            modules = {},
            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = true,
            },

            incremental_selection = {
                enable = true,
                keymaps = {
                    node_incremental = "v",
                    node_decremental = "<leader>v",
                },
            },

            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = { query = "@function.outer", desc = "function" },
                        ["if"] = { query = "@function.inner", desc = "function" },
                        ["ac"] = { query = "@class.outer", desc = "class" },
                        ["ic"] = { query = "@class.inner", desc = "class" },
                    },
                    include_surrounding_whitespace = false,
                },
            },
        })
    end,
}
