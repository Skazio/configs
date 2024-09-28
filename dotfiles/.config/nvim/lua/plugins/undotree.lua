-- undotree allows to open the tree of all the editing in the current buffer
-- allowing the navigation of different undo branches
return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
