-- gitsigns display hint in sign column (add, modif, delete)
-- it  also add hunks manipulation
return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("gitsigns").setup()
	end,
}
