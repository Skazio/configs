-- Mason provide a interface to easily install LSP, DAP, Formatter, Linter
-- servers in Neovim special paths to have the executables ready
return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end,
}
