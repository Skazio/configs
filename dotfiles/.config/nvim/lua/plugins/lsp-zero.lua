-- lsp-zero adds an abstraction layer on top of nvim-lspconfig to more easily
-- set up lsp and use Neovim's LSP client
return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		lsp_zero.preset("recommended")

		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-space>"] = cmp.mapping.complete(),
				["<tab>"] = cmp.mapping.select_next_item(cmp_select),
				["<S-tab>"] = cmp.mapping.select_prev_item(cmp_select),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
			}),
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
		})

		lsp_zero.on_attach(function(client, bufnr)
			local opts = { buffer = bufnr, remap = false }
			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, opts)
		end)

		lsp_zero.setup()
	end,
}
