return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
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
					init_selection = "<leader>nn",
					node_incremental = "<leader>ne",
					node_decremental = "<leader>ns",
					scope_incremental = "<leader>nc",
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
