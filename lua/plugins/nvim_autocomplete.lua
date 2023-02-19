return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",

		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
	},
	config = function()
		vim.g.completeopt = { "menu", "menuone", "noselect"}

		local cmp = require "cmp"
		cmp.setup {
			snippet = {
			    expand = function(args)
				vim.fn["vsnip#anonymous"](args.body)
			    end,
			},
			window = {
			    completion = cmp.config.window.bordered(),
			    documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
			    ["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
			    { name = "nvim_lsp" },
			    { name = "vsnip" },
			    { name = "buffer" },
			    { name = "path" },
			}),
		}
	end
}
