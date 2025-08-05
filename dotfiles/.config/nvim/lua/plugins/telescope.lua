-- telescope adds a fuzzy finder for a lot of context, for instance: strings,
-- files, todos, etc.
return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        local actions = require("telescope.actions")

        telescope.load_extension("fzf")

        telescope.setup({
            defaults = {
                mappings = {
                    n = {
                        ["<S-tab>"] = actions.move_selection_next,
                        ["<tab>"] = actions.move_selection_previous,
                        ["<C-n>"] = actions.cycle_history_next,
                        ["<C-p>"] = actions.cycle_history_prev,
                        ["+"] = actions.add_selection + actions.move_selection_next,
                        ["="] = actions.add_selection + actions.move_selection_next,
                        ["-"] = actions.remove_selection + actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        ["<C-a>"] = actions.send_to_qflist + actions.open_qflist,
                    },
                    i = {
                        ["<S-tab>"] = actions.move_selection_next,
                        ["<tab>"] = actions.move_selection_previous,
                        ["<C-n>"] = actions.cycle_history_next,
                        ["<C-p>"] = actions.cycle_history_prev,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        ["<C-a>"] = actions.send_to_qflist + actions.open_qflist,
                    },
                },
            },

            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({}),
                },
            },
        })

        require("telescope").load_extension("ui-select")

        vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find strings" })
        vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Find todos" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
        vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Find marks" })
        vim.keymap.set("n", "<leader>fc", builtin.git_bcommits, { desc = "Find changes" })

        vim.keymap.set("n", "<leader>fd", function()
            builtin.lsp_definitions({ jump_type = "never" })
        end, { desc = "Find definition" })
    end,
}
