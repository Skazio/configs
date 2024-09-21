return {
    "nvim-telescope/telescope.nvim", tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function ()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        local actions = require("telescope.actions")

        telescope.load_extension("fzf")

        telescope.setup({
            defaults = {
                mappings ={
                    n = {
                        ["<C-n>"] = actions.cycle_history_next,
                        ["<C-p>"] = actions.cycle_history_prev,
                        ["+"] = actions.add_selection + actions.move_selection_next,
                        ["="] = actions.add_selection + actions.move_selection_next,
                        ["-"] = actions.remove_selection + actions.move_selection_next,
                    },
                    i = {
                        ["<tab>"] = actions.move_selection_next,
                        ["<S-tab>"] = actions.move_selection_previous,
                        ["<C-n>"] = actions.cycle_history_next,
                        ["<C-p>"] = actions.cycle_history_prev,
                    }
                }
            },
        })

        vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>f", builtin.live_grep, { desc = "Find strings" })
    end
}

