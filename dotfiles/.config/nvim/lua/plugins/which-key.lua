-- which-key adds a floating window to show the key sequence and their
-- associated actions
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		delay = 1000,
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = true })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
