return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
        require("nvim-tree").setup({
            update_focused_file = {
                enable = true
            },


            renderer = {
                root_folder_label = "",
                indent_markers = {
                    enable = true
                }
            },

            git = {
                ignore = false
            },
        })


        vim.keymap.set("n", "<leader>ee", "<Esc>:NvimTreeToggle<CR>", { desc = "Open explorer" })
        vim.keymap.set("n", "<leader>e-", "<Esc>:NvimTreeCollapse<CR>", { desc = "Collapse all explorer folders" })
        vim.keymap.set("n", "<leader>er", "<Esc>:NvimTreeRefresh<CR>", { desc = "Refresh explorer" })
    end
}

