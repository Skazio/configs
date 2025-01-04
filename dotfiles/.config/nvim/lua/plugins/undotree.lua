-- undotree allows to open the tree of all the editing in the current buffer
-- allowing the navigation of different undo branches
return {
    "mbbill/undotree",
    keys = {
        {
            "<leader>u",
            function()
                vim.cmd.UndotreeToggle()
            end,
        },
    },
}
