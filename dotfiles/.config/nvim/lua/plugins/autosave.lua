-- auto-save automaticaly saves the buffer when exiting insert mode or after
-- some delay when the content of the buffer has changed
return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true,
			execution_message = {
				message = "",
			},
		})
	end,
}
